; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/adv748x/extr_adv748x-core.c_adv748x_tx_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/adv748x/extr_adv748x-core.c_adv748x_tx_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adv748x_csi2 = type { i32 }

@ADV748X_CSI_FS_AS_LS = common dso_local global i32 0, align 4
@ADV748X_CSI_FS_AS_LS_UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Enabling with unknown bit set\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @adv748x_tx_power(%struct.adv748x_csi2* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adv748x_csi2*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.adv748x_csi2* %0, %struct.adv748x_csi2** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.adv748x_csi2*, %struct.adv748x_csi2** %4, align 8
  %8 = call i32 @is_tx_enabled(%struct.adv748x_csi2* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %41

11:                                               ; preds = %2
  %12 = load %struct.adv748x_csi2*, %struct.adv748x_csi2** %4, align 8
  %13 = load i32, i32* @ADV748X_CSI_FS_AS_LS, align 4
  %14 = call i32 @tx_read(%struct.adv748x_csi2* %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %3, align 4
  br label %41

19:                                               ; preds = %11
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @ADV748X_CSI_FS_AS_LS_UNKNOWN, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br label %27

27:                                               ; preds = %22, %19
  %28 = phi i1 [ false, %19 ], [ %26, %22 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @WARN_ONCE(i32 %29, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load %struct.adv748x_csi2*, %struct.adv748x_csi2** %4, align 8
  %35 = call i32 @adv748x_power_up_tx(%struct.adv748x_csi2* %34)
  br label %39

36:                                               ; preds = %27
  %37 = load %struct.adv748x_csi2*, %struct.adv748x_csi2** %4, align 8
  %38 = call i32 @adv748x_power_down_tx(%struct.adv748x_csi2* %37)
  br label %39

39:                                               ; preds = %36, %33
  %40 = phi i32 [ %35, %33 ], [ %38, %36 ]
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %39, %17, %10
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @is_tx_enabled(%struct.adv748x_csi2*) #1

declare dso_local i32 @tx_read(%struct.adv748x_csi2*, i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @adv748x_power_up_tx(%struct.adv748x_csi2*) #1

declare dso_local i32 @adv748x_power_down_tx(%struct.adv748x_csi2*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
