; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_vfpf.c_bnx2x_get_vf_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_vfpf.c_bnx2x_get_vf_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }

@.str = private unnamed_addr constant [53 x i8] c"Invalid ME register value: 0x%08x\0A. Is pf driver up?\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Invalid ME register value: 0x%08x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@BNX2X_MSG_IOV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"valid ME register value: 0x%08x\0A\00", align 1
@ME_REG_VF_NUM_MASK = common dso_local global i32 0, align 4
@ME_REG_VF_NUM_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, i32*)* @bnx2x_get_vf_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_get_vf_id(%struct.bnx2x* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 10, i32* %7, align 4
  store i32 100, i32* %8, align 4
  br label %9

9:                                                ; preds = %23, %2
  %10 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %11 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @readl(i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i64 @GOOD_ME_REG(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %9
  br label %27

18:                                               ; preds = %9
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @msleep(i32 %19)
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %18
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %7, align 4
  %26 = icmp sgt i32 %24, 0
  br i1 %26, label %9, label %27

27:                                               ; preds = %23, %17
  %28 = load i32, i32* %6, align 4
  %29 = call i64 @GOOD_ME_REG(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %46

36:                                               ; preds = %27
  %37 = load i32, i32* @BNX2X_MSG_IOV, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @DP(i32 %37, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @ME_REG_VF_NUM_MASK, align 4
  %42 = and i32 %40, %41
  %43 = load i32, i32* @ME_REG_VF_NUM_SHIFT, align 4
  %44 = ashr i32 %42, %43
  %45 = load i32*, i32** %5, align 8
  store i32 %44, i32* %45, align 4
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %36, %31
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @readl(i32) #1

declare dso_local i64 @GOOD_ME_REG(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @BNX2X_ERR(i8*, i32) #1

declare dso_local i32 @DP(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
