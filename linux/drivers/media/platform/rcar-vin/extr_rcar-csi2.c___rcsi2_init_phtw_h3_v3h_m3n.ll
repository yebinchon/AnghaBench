; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-csi2.c___rcsi2_init_phtw_h3_v3h_m3n.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-csi2.c___rcsi2_init_phtw_h3_v3h_m3n.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phtw_value = type { i32, i32 }
%struct.rcar_csi2 = type { i32 }

@__rcsi2_init_phtw_h3_v3h_m3n.step1 = internal constant [6 x %struct.phtw_value] [%struct.phtw_value { i32 204, i32 226 }, %struct.phtw_value { i32 1, i32 227 }, %struct.phtw_value { i32 17, i32 228 }, %struct.phtw_value { i32 1, i32 229 }, %struct.phtw_value { i32 16, i32 4 }, %struct.phtw_value zeroinitializer], align 16
@__rcsi2_init_phtw_h3_v3h_m3n.step2 = internal constant [6 x %struct.phtw_value] [%struct.phtw_value { i32 56, i32 8 }, %struct.phtw_value { i32 1, i32 0 }, %struct.phtw_value { i32 75, i32 172 }, %struct.phtw_value { i32 3, i32 0 }, %struct.phtw_value { i32 128, i32 7 }, %struct.phtw_value zeroinitializer], align 16
@phtw_mbps_h3_v3h_m3n = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rcar_csi2*, i32)* @__rcsi2_init_phtw_h3_v3h_m3n to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__rcsi2_init_phtw_h3_v3h_m3n(%struct.rcar_csi2* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rcar_csi2*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rcar_csi2* %0, %struct.rcar_csi2** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.rcar_csi2*, %struct.rcar_csi2** %4, align 8
  %8 = call i32 @rcsi2_phtw_write_array(%struct.rcar_csi2* %7, %struct.phtw_value* getelementptr inbounds ([6 x %struct.phtw_value], [6 x %struct.phtw_value]* @__rcsi2_init_phtw_h3_v3h_m3n.step1, i64 0, i64 0))
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %3, align 4
  br label %39

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %36

16:                                               ; preds = %13
  %17 = load i32, i32* %5, align 4
  %18 = icmp ule i32 %17, 250
  br i1 %18, label %19, label %36

19:                                               ; preds = %16
  %20 = load %struct.rcar_csi2*, %struct.rcar_csi2** %4, align 8
  %21 = call i32 @rcsi2_phtw_write(%struct.rcar_csi2* %20, i32 57, i32 5)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %3, align 4
  br label %39

26:                                               ; preds = %19
  %27 = load %struct.rcar_csi2*, %struct.rcar_csi2** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @phtw_mbps_h3_v3h_m3n, align 4
  %30 = call i32 @rcsi2_phtw_write_mbps(%struct.rcar_csi2* %27, i32 %28, i32 %29, i32 241)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %3, align 4
  br label %39

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35, %16, %13
  %37 = load %struct.rcar_csi2*, %struct.rcar_csi2** %4, align 8
  %38 = call i32 @rcsi2_phtw_write_array(%struct.rcar_csi2* %37, %struct.phtw_value* getelementptr inbounds ([6 x %struct.phtw_value], [6 x %struct.phtw_value]* @__rcsi2_init_phtw_h3_v3h_m3n.step2, i64 0, i64 0))
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %36, %33, %24, %11
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @rcsi2_phtw_write_array(%struct.rcar_csi2*, %struct.phtw_value*) #1

declare dso_local i32 @rcsi2_phtw_write(%struct.rcar_csi2*, i32, i32) #1

declare dso_local i32 @rcsi2_phtw_write_mbps(%struct.rcar_csi2*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
