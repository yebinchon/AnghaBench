; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot_ace.c_vcap_action2cache.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot_ace.c_vcap_action2cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.ocelot = type { i32 }
%struct.vcap_data = type { i64*, i64, i64* }

@vcap_is2 = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@S2_CACHE_ACTION_DAT = common dso_local global i32 0, align 4
@S2_CACHE_CNT_DAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocelot*, %struct.vcap_data*)* @vcap_action2cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vcap_action2cache(%struct.ocelot* %0, %struct.vcap_data* %1) #0 {
  %3 = alloca %struct.ocelot*, align 8
  %4 = alloca %struct.vcap_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.ocelot* %0, %struct.ocelot** %3, align 8
  store %struct.vcap_data* %1, %struct.vcap_data** %4, align 8
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vcap_is2, i32 0, i32 0), align 8
  store i64 %8, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %30

11:                                               ; preds = %2
  %12 = load i64, i64* %6, align 8
  %13 = call i64 @GENMASK(i64 %12, i32 0)
  store i64 %13, i64* %7, align 8
  %14 = load %struct.vcap_data*, %struct.vcap_data** %4, align 8
  %15 = getelementptr inbounds %struct.vcap_data, %struct.vcap_data* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %7, align 8
  %20 = xor i64 %19, -1
  %21 = and i64 %18, %20
  %22 = load %struct.vcap_data*, %struct.vcap_data** %4, align 8
  %23 = getelementptr inbounds %struct.vcap_data, %struct.vcap_data* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = or i64 %21, %24
  %26 = load %struct.vcap_data*, %struct.vcap_data** %4, align 8
  %27 = getelementptr inbounds %struct.vcap_data, %struct.vcap_data* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 0
  store i64 %25, i64* %29, align 8
  br label %30

30:                                               ; preds = %11, %2
  store i64 0, i64* %5, align 8
  br label %31

31:                                               ; preds = %46, %30
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vcap_is2, i32 0, i32 1), align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %31
  %36 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %37 = load %struct.vcap_data*, %struct.vcap_data** %4, align 8
  %38 = getelementptr inbounds %struct.vcap_data, %struct.vcap_data* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = load i64, i64* %5, align 8
  %41 = getelementptr inbounds i64, i64* %39, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* @S2_CACHE_ACTION_DAT, align 4
  %44 = load i64, i64* %5, align 8
  %45 = call i32 @ocelot_write_rix(%struct.ocelot* %36, i64 %42, i32 %43, i64 %44)
  br label %46

46:                                               ; preds = %35
  %47 = load i64, i64* %5, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %5, align 8
  br label %31

49:                                               ; preds = %31
  store i64 0, i64* %5, align 8
  br label %50

50:                                               ; preds = %65, %49
  %51 = load i64, i64* %5, align 8
  %52 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vcap_is2, i32 0, i32 2), align 8
  %53 = icmp ult i64 %51, %52
  br i1 %53, label %54, label %68

54:                                               ; preds = %50
  %55 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %56 = load %struct.vcap_data*, %struct.vcap_data** %4, align 8
  %57 = getelementptr inbounds %struct.vcap_data, %struct.vcap_data* %56, i32 0, i32 2
  %58 = load i64*, i64** %57, align 8
  %59 = load i64, i64* %5, align 8
  %60 = getelementptr inbounds i64, i64* %58, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* @S2_CACHE_CNT_DAT, align 4
  %63 = load i64, i64* %5, align 8
  %64 = call i32 @ocelot_write_rix(%struct.ocelot* %55, i64 %61, i32 %62, i64 %63)
  br label %65

65:                                               ; preds = %54
  %66 = load i64, i64* %5, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %5, align 8
  br label %50

68:                                               ; preds = %50
  ret void
}

declare dso_local i64 @GENMASK(i64, i32) #1

declare dso_local i32 @ocelot_write_rix(%struct.ocelot*, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
