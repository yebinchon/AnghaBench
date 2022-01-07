; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lantiq_gswip.c_gswip_gphy_fw_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lantiq_gswip.c_gswip_gphy_fw_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gswip_priv = type { i32, i32 }
%struct.gswip_gphy_fw = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"can not reset GPHY FW pointer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gswip_priv*, %struct.gswip_gphy_fw*)* @gswip_gphy_fw_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gswip_gphy_fw_remove(%struct.gswip_priv* %0, %struct.gswip_gphy_fw* %1) #0 {
  %3 = alloca %struct.gswip_priv*, align 8
  %4 = alloca %struct.gswip_gphy_fw*, align 8
  %5 = alloca i32, align 4
  store %struct.gswip_priv* %0, %struct.gswip_priv** %3, align 8
  store %struct.gswip_gphy_fw* %1, %struct.gswip_gphy_fw** %4, align 8
  %6 = load %struct.gswip_gphy_fw*, %struct.gswip_gphy_fw** %4, align 8
  %7 = getelementptr inbounds %struct.gswip_gphy_fw, %struct.gswip_gphy_fw* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %35

11:                                               ; preds = %2
  %12 = load %struct.gswip_priv*, %struct.gswip_priv** %3, align 8
  %13 = getelementptr inbounds %struct.gswip_priv, %struct.gswip_priv* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.gswip_gphy_fw*, %struct.gswip_gphy_fw** %4, align 8
  %16 = getelementptr inbounds %struct.gswip_gphy_fw, %struct.gswip_gphy_fw* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @regmap_write(i32 %14, i32 %17, i32 0)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %11
  %22 = load %struct.gswip_priv*, %struct.gswip_priv** %3, align 8
  %23 = getelementptr inbounds %struct.gswip_priv, %struct.gswip_priv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dev_err(i32 %24, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %21, %11
  %27 = load %struct.gswip_gphy_fw*, %struct.gswip_gphy_fw** %4, align 8
  %28 = getelementptr inbounds %struct.gswip_gphy_fw, %struct.gswip_gphy_fw* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @clk_disable_unprepare(i32 %29)
  %31 = load %struct.gswip_gphy_fw*, %struct.gswip_gphy_fw** %4, align 8
  %32 = getelementptr inbounds %struct.gswip_gphy_fw, %struct.gswip_gphy_fw* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @reset_control_put(i32 %33)
  br label %35

35:                                               ; preds = %26, %10
  ret void
}

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @reset_control_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
