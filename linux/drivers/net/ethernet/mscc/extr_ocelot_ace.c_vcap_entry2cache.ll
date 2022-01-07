; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot_ace.c_vcap_entry2cache.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot_ace.c_vcap_entry2cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.ocelot = type { i32 }
%struct.vcap_data = type { i32, i32*, i32* }

@vcap_is2 = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@S2_CACHE_ENTRY_DAT = common dso_local global i32 0, align 4
@S2_CACHE_MASK_DAT = common dso_local global i32 0, align 4
@S2_CACHE_TG_DAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocelot*, %struct.vcap_data*)* @vcap_entry2cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vcap_entry2cache(%struct.ocelot* %0, %struct.vcap_data* %1) #0 {
  %3 = alloca %struct.ocelot*, align 8
  %4 = alloca %struct.vcap_data*, align 8
  %5 = alloca i64, align 8
  store %struct.ocelot* %0, %struct.ocelot** %3, align 8
  store %struct.vcap_data* %1, %struct.vcap_data** %4, align 8
  store i64 0, i64* %5, align 8
  br label %6

6:                                                ; preds = %32, %2
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vcap_is2, i32 0, i32 0), align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %10, label %35

10:                                               ; preds = %6
  %11 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %12 = load %struct.vcap_data*, %struct.vcap_data** %4, align 8
  %13 = getelementptr inbounds %struct.vcap_data, %struct.vcap_data* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = load i64, i64* %5, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @S2_CACHE_ENTRY_DAT, align 4
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @ocelot_write_rix(%struct.ocelot* %11, i32 %17, i32 %18, i64 %19)
  %21 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %22 = load %struct.vcap_data*, %struct.vcap_data** %4, align 8
  %23 = getelementptr inbounds %struct.vcap_data, %struct.vcap_data* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* %5, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* @S2_CACHE_MASK_DAT, align 4
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @ocelot_write_rix(%struct.ocelot* %21, i32 %28, i32 %29, i64 %30)
  br label %32

32:                                               ; preds = %10
  %33 = load i64, i64* %5, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %5, align 8
  br label %6

35:                                               ; preds = %6
  %36 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %37 = load %struct.vcap_data*, %struct.vcap_data** %4, align 8
  %38 = getelementptr inbounds %struct.vcap_data, %struct.vcap_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @S2_CACHE_TG_DAT, align 4
  %41 = call i32 @ocelot_write(%struct.ocelot* %36, i32 %39, i32 %40)
  ret void
}

declare dso_local i32 @ocelot_write_rix(%struct.ocelot*, i32, i32, i64) #1

declare dso_local i32 @ocelot_write(%struct.ocelot*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
