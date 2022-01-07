; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_set_serdes_access.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_set_serdes_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }

@GRCBASE_EMAC1 = common dso_local global i64 0, align 8
@GRCBASE_EMAC0 = common dso_local global i64 0, align 8
@NIG_REG_SERDES0_CTRL_MD_ST = common dso_local global i64 0, align 8
@EMAC_REG_EMAC_MDIO_COMM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, i32)* @bnx2x_set_serdes_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_set_serdes_access(%struct.bnx2x* %0, i32 %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i64, i64* @GRCBASE_EMAC1, align 8
  br label %12

10:                                               ; preds = %2
  %11 = load i64, i64* @GRCBASE_EMAC0, align 8
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i64 [ %9, %8 ], [ %11, %10 ]
  store i64 %13, i64* %5, align 8
  %14 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %15 = load i64, i64* @NIG_REG_SERDES0_CTRL_MD_ST, align 8
  %16 = load i32, i32* %4, align 4
  %17 = mul nsw i32 %16, 16
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %15, %18
  %20 = call i32 @REG_WR(%struct.bnx2x* %14, i64 %19, i32 1)
  %21 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* @EMAC_REG_EMAC_MDIO_COMM, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @REG_WR(%struct.bnx2x* %21, i64 %24, i32 610238464)
  %26 = call i32 @udelay(i32 500)
  %27 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* @EMAC_REG_EMAC_MDIO_COMM, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @REG_WR(%struct.bnx2x* %27, i64 %30, i32 610074639)
  %32 = call i32 @udelay(i32 500)
  %33 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %34 = load i64, i64* @NIG_REG_SERDES0_CTRL_MD_ST, align 8
  %35 = load i32, i32* %4, align 4
  %36 = mul nsw i32 %35, 16
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %34, %37
  %39 = call i32 @REG_WR(%struct.bnx2x* %33, i64 %38, i32 0)
  ret void
}

declare dso_local i32 @REG_WR(%struct.bnx2x*, i64, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
