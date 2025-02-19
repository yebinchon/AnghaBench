; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_main.c_lbs_rtap_supported.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_main.c_lbs_rtap_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i32, i32 }

@MRVL_FW_V5 = common dso_local global i64 0, align 8
@MRVL_FW_V10 = common dso_local global i64 0, align 8
@MESH_CAPINFO_ENABLE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lbs_rtap_supported(%struct.lbs_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lbs_private*, align 8
  store %struct.lbs_private* %0, %struct.lbs_private** %3, align 8
  %4 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %5 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = call i64 @MRVL_FW_MAJOR_REV(i32 %6)
  %8 = load i64, i64* @MRVL_FW_V5, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %28

11:                                               ; preds = %1
  %12 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %13 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @MRVL_FW_MAJOR_REV(i32 %14)
  %16 = load i64, i64* @MRVL_FW_V10, align 8
  %17 = icmp sge i64 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %11
  %19 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %20 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @MESH_CAPINFO_ENABLE_MASK, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br label %25

25:                                               ; preds = %18, %11
  %26 = phi i1 [ false, %11 ], [ %24, %18 ]
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %25, %10
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i64 @MRVL_FW_MAJOR_REV(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
