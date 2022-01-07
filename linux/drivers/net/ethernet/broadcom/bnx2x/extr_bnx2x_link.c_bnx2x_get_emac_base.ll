; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_get_emac_base.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_get_emac_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }

@NIG_REG_PORT_SWAP = common dso_local global i32 0, align 4
@GRCBASE_EMAC1 = common dso_local global i32 0, align 4
@GRCBASE_EMAC0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, i32, i32)* @bnx2x_get_emac_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_get_emac_base(%struct.bnx2x* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %48 [
    i32 129, label %9
    i32 131, label %10
    i32 130, label %20
    i32 132, label %30
    i32 128, label %39
  ]

9:                                                ; preds = %3
  br label %49

10:                                               ; preds = %3
  %11 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %12 = load i32, i32* @NIG_REG_PORT_SWAP, align 4
  %13 = call i32 @REG_RD(%struct.bnx2x* %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = load i32, i32* @GRCBASE_EMAC1, align 4
  store i32 %16, i32* %7, align 4
  br label %19

17:                                               ; preds = %10
  %18 = load i32, i32* @GRCBASE_EMAC0, align 4
  store i32 %18, i32* %7, align 4
  br label %19

19:                                               ; preds = %17, %15
  br label %49

20:                                               ; preds = %3
  %21 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %22 = load i32, i32* @NIG_REG_PORT_SWAP, align 4
  %23 = call i32 @REG_RD(%struct.bnx2x* %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* @GRCBASE_EMAC0, align 4
  store i32 %26, i32* %7, align 4
  br label %29

27:                                               ; preds = %20
  %28 = load i32, i32* @GRCBASE_EMAC1, align 4
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %27, %25
  br label %49

30:                                               ; preds = %3
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* @GRCBASE_EMAC1, align 4
  br label %37

35:                                               ; preds = %30
  %36 = load i32, i32* @GRCBASE_EMAC0, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  store i32 %38, i32* %7, align 4
  br label %49

39:                                               ; preds = %3
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i32, i32* @GRCBASE_EMAC0, align 4
  br label %46

44:                                               ; preds = %39
  %45 = load i32, i32* @GRCBASE_EMAC1, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i32 [ %43, %42 ], [ %45, %44 ]
  store i32 %47, i32* %7, align 4
  br label %49

48:                                               ; preds = %3
  br label %49

49:                                               ; preds = %48, %46, %37, %29, %19, %9
  %50 = load i32, i32* %7, align 4
  ret i32 %50
}

declare dso_local i32 @REG_RD(%struct.bnx2x*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
