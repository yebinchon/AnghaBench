; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_mscc.c_vsc85xx_eee_init_seq_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_mscc.c_vsc85xx_eee_init_seq_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reg_val = type { i32, i32, i32, i32 }
%struct.phy_device = type { i32 }

@__const.vsc85xx_eee_init_seq_set.init_eee = private unnamed_addr constant [18 x %struct.reg_val] [%struct.reg_val { i32 3970, i32 1224714, i32 0, i32 0 }, %struct.reg_val { i32 5766, i32 4, i32 0, i32 0 }, %struct.reg_val { i32 5772, i32 13812847, i32 0, i32 0 }, %struct.reg_val { i32 6050, i32 1568, i32 0, i32 0 }, %struct.reg_val { i32 5792, i32 15663069, i32 0, i32 0 }, %struct.reg_val { i32 5798, i32 463944, i32 0, i32 0 }, %struct.reg_val { i32 5796, i32 1250095, i32 0, i32 0 }, %struct.reg_val { i32 5800, i32 0, i32 0, i32 0 }, %struct.reg_val { i32 4092, i32 12623912, i32 0, i32 0 }, %struct.reg_val { i32 4072, i32 9547884, i32 0, i32 0 }, %struct.reg_val { i32 4074, i32 267776, i32 0, i32 0 }, %struct.reg_val { i32 3968, i32 2804, i32 0, i32 0 }, %struct.reg_val { i32 4076, i32 9443337, i32 0, i32 0 }, %struct.reg_val { i32 4078, i32 42657, i32 0, i32 0 }, %struct.reg_val { i32 4094, i32 11538439, i32 0, i32 0 }, %struct.reg_val { i32 5808, i32 15662848, i32 0, i32 0 }, %struct.reg_val { i32 5810, i32 28672, i32 0, i32 0 }, %struct.reg_val { i32 5812, i32 2068, i32 0, i32 0 }], align 16
@MSCC_PHY_PAGE_TR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @vsc85xx_eee_init_seq_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vsc85xx_eee_init_seq_set(%struct.phy_device* %0) #0 {
  %2 = alloca %struct.phy_device*, align 8
  %3 = alloca [18 x %struct.reg_val], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %2, align 8
  %6 = bitcast [18 x %struct.reg_val]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 16 bitcast ([18 x %struct.reg_val]* @__const.vsc85xx_eee_init_seq_set.init_eee to i8*), i64 288, i1 false)
  %7 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %8 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %11 = load i32, i32* @MSCC_PHY_PAGE_TR, align 4
  %12 = call i32 @phy_select_page(%struct.phy_device* %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %39

16:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %35, %16
  %18 = load i32, i32* %4, align 4
  %19 = getelementptr inbounds [18 x %struct.reg_val], [18 x %struct.reg_val]* %3, i64 0, i64 0
  %20 = call i32 @ARRAY_SIZE(%struct.reg_val* %19)
  %21 = icmp ult i32 %18, %20
  br i1 %21, label %22, label %38

22:                                               ; preds = %17
  %23 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %24 = load i32, i32* %4, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds [18 x %struct.reg_val], [18 x %struct.reg_val]* %3, i64 0, i64 %25
  %27 = getelementptr inbounds %struct.reg_val, %struct.reg_val* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %4, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds [18 x %struct.reg_val], [18 x %struct.reg_val]* %3, i64 0, i64 %30
  %32 = getelementptr inbounds %struct.reg_val, %struct.reg_val* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @vsc85xx_tr_write(%struct.phy_device* %23, i32 %28, i32 %33)
  br label %35

35:                                               ; preds = %22
  %36 = load i32, i32* %4, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %17

38:                                               ; preds = %17
  br label %39

39:                                               ; preds = %38, %15
  %40 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @phy_restore_page(%struct.phy_device* %40, i32 %41, i32 %42)
  store i32 %43, i32* %5, align 4
  %44 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %45 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %44, i32 0, i32 0
  %46 = call i32 @mutex_unlock(i32* %45)
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @phy_select_page(%struct.phy_device*, i32) #2

declare dso_local i32 @ARRAY_SIZE(%struct.reg_val*) #2

declare dso_local i32 @vsc85xx_tr_write(%struct.phy_device*, i32, i32) #2

declare dso_local i32 @phy_restore_page(%struct.phy_device*, i32, i32) #2

declare dso_local i32 @mutex_unlock(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
