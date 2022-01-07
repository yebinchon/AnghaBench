; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot_ace.c_vcap_cache2action.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot_ace.c_vcap_cache2action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.ocelot = type { i32 }
%struct.vcap_data = type { i32*, i32, i8** }

@vcap_is2 = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@S2_CACHE_ACTION_DAT = common dso_local global i32 0, align 4
@S2_CACHE_CNT_DAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocelot*, %struct.vcap_data*)* @vcap_cache2action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vcap_cache2action(%struct.ocelot* %0, %struct.vcap_data* %1) #0 {
  %3 = alloca %struct.ocelot*, align 8
  %4 = alloca %struct.vcap_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.ocelot* %0, %struct.ocelot** %3, align 8
  store %struct.vcap_data* %1, %struct.vcap_data** %4, align 8
  store i64 0, i64* %5, align 8
  br label %7

7:                                                ; preds = %22, %2
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vcap_is2, i32 0, i32 0), align 8
  %10 = icmp ult i64 %8, %9
  br i1 %10, label %11, label %25

11:                                               ; preds = %7
  %12 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %13 = load i32, i32* @S2_CACHE_ACTION_DAT, align 4
  %14 = load i64, i64* %5, align 8
  %15 = call i8* @ocelot_read_rix(%struct.ocelot* %12, i32 %13, i64 %14)
  %16 = ptrtoint i8* %15 to i32
  %17 = load %struct.vcap_data*, %struct.vcap_data** %4, align 8
  %18 = getelementptr inbounds %struct.vcap_data, %struct.vcap_data* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  store i32 %16, i32* %21, align 4
  br label %22

22:                                               ; preds = %11
  %23 = load i64, i64* %5, align 8
  %24 = add i64 %23, 1
  store i64 %24, i64* %5, align 8
  br label %7

25:                                               ; preds = %7
  store i64 0, i64* %5, align 8
  br label %26

26:                                               ; preds = %40, %25
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vcap_is2, i32 0, i32 1), align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %26
  %31 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %32 = load i32, i32* @S2_CACHE_CNT_DAT, align 4
  %33 = load i64, i64* %5, align 8
  %34 = call i8* @ocelot_read_rix(%struct.ocelot* %31, i32 %32, i64 %33)
  %35 = load %struct.vcap_data*, %struct.vcap_data** %4, align 8
  %36 = getelementptr inbounds %struct.vcap_data, %struct.vcap_data* %35, i32 0, i32 2
  %37 = load i8**, i8*** %36, align 8
  %38 = load i64, i64* %5, align 8
  %39 = getelementptr inbounds i8*, i8** %37, i64 %38
  store i8* %34, i8** %39, align 8
  br label %40

40:                                               ; preds = %30
  %41 = load i64, i64* %5, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %5, align 8
  br label %26

43:                                               ; preds = %26
  %44 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vcap_is2, i32 0, i32 2), align 8
  store i64 %44, i64* %6, align 8
  %45 = load i64, i64* %6, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %43
  %48 = load %struct.vcap_data*, %struct.vcap_data** %4, align 8
  %49 = getelementptr inbounds %struct.vcap_data, %struct.vcap_data* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = load i64, i64* %6, align 8
  %54 = call i32 @GENMASK(i64 %53, i32 0)
  %55 = and i32 %52, %54
  br label %57

56:                                               ; preds = %43
  br label %57

57:                                               ; preds = %56, %47
  %58 = phi i32 [ %55, %47 ], [ 0, %56 ]
  %59 = load %struct.vcap_data*, %struct.vcap_data** %4, align 8
  %60 = getelementptr inbounds %struct.vcap_data, %struct.vcap_data* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 8
  ret void
}

declare dso_local i8* @ocelot_read_rix(%struct.ocelot*, i32, i64) #1

declare dso_local i32 @GENMASK(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
