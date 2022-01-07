; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_prev_unload_close_umac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_prev_unload_close_umac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_mac_vals = type { i32*, i32* }

@MISC_REGISTERS_RESET_REG_2_UMAC0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Disable umac Rx %02x\0A\00", align 1
@GRCBASE_UMAC1 = common dso_local global i32 0, align 4
@GRCBASE_UMAC0 = common dso_local global i32 0, align 4
@UMAC_REG_COMMAND_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, i32, i32, %struct.bnx2x_mac_vals*)* @bnx2x_prev_unload_close_umac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_prev_unload_close_umac(%struct.bnx2x* %0, i32 %1, i32 %2, %struct.bnx2x_mac_vals* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bnx2x*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bnx2x_mac_vals*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.bnx2x_mac_vals* %3, %struct.bnx2x_mac_vals** %9, align 8
  %12 = load i32, i32* @MISC_REGISTERS_RESET_REG_2_UMAC0, align 4
  %13 = load i32, i32* %7, align 4
  %14 = shl i32 %12, %13
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* %8, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %64

20:                                               ; preds = %4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @BNX2X_DEV_INFO(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* @GRCBASE_UMAC1, align 4
  br label %29

27:                                               ; preds = %20
  %28 = load i32, i32* @GRCBASE_UMAC0, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @UMAC_REG_COMMAND_CONFIG, align 4
  %33 = add nsw i32 %31, %32
  %34 = load %struct.bnx2x_mac_vals*, %struct.bnx2x_mac_vals** %9, align 8
  %35 = getelementptr inbounds %struct.bnx2x_mac_vals, %struct.bnx2x_mac_vals* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  store i32 %33, i32* %39, align 4
  %40 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %41 = load %struct.bnx2x_mac_vals*, %struct.bnx2x_mac_vals** %9, align 8
  %42 = getelementptr inbounds %struct.bnx2x_mac_vals, %struct.bnx2x_mac_vals* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @REG_RD(%struct.bnx2x* %40, i32 %47)
  %49 = load %struct.bnx2x_mac_vals*, %struct.bnx2x_mac_vals** %9, align 8
  %50 = getelementptr inbounds %struct.bnx2x_mac_vals, %struct.bnx2x_mac_vals* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32 %48, i32* %54, align 4
  %55 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %56 = load %struct.bnx2x_mac_vals*, %struct.bnx2x_mac_vals** %9, align 8
  %57 = getelementptr inbounds %struct.bnx2x_mac_vals, %struct.bnx2x_mac_vals* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @REG_WR(%struct.bnx2x* %55, i32 %62, i32 0)
  store i32 1, i32* %5, align 4
  br label %64

64:                                               ; preds = %29, %19
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @BNX2X_DEV_INFO(i8*, i32) #1

declare dso_local i32 @REG_RD(%struct.bnx2x*, i32) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
