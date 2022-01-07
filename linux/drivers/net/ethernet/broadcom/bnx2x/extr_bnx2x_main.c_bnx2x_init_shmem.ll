; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_init_shmem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_init_shmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@MISC_REG_SHARED_MEM_ADDR = common dso_local global i32 0, align 4
@NO_MCP_FLAG = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@validity_map = common dso_local global i32* null, align 8
@SHR_MEM_VALIDITY_MB = common dso_local global i32 0, align 4
@MCP_TIMEOUT = common dso_local global i32 0, align 4
@MCP_ONE_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"BAD MCP validity signature\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*)* @bnx2x_init_shmem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_init_shmem(%struct.bnx2x* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %49, %1
  %7 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %8 = load i32, i32* @MISC_REG_SHARED_MEM_ADDR, align 4
  %9 = call i32 @REG_RD(%struct.bnx2x* %7, i32 %8)
  %10 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %11 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i32 %9, i32* %12, align 4
  %13 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %14 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %26

18:                                               ; preds = %6
  %19 = load i32, i32* @NO_MCP_FLAG, align 4
  %20 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %21 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 4
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %60

26:                                               ; preds = %6
  %27 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %28 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %26
  %33 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %34 = load i32*, i32** @validity_map, align 8
  %35 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %36 = call i64 @BP_PORT(%struct.bnx2x* %35)
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @SHMEM_RD(%struct.bnx2x* %33, i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @SHR_MEM_VALIDITY_MB, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %60

45:                                               ; preds = %32
  br label %46

46:                                               ; preds = %45, %26
  %47 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %48 = call i32 @bnx2x_mcp_wait_one(%struct.bnx2x* %47)
  br label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* @MCP_TIMEOUT, align 4
  %53 = load i32, i32* @MCP_ONE_TIMEOUT, align 4
  %54 = sdiv i32 %52, %53
  %55 = icmp slt i32 %50, %54
  br i1 %55, label %6, label %56

56:                                               ; preds = %49
  %57 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %58 = load i32, i32* @ENODEV, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %56, %44, %18
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @REG_RD(%struct.bnx2x*, i32) #1

declare dso_local i32 @SHMEM_RD(%struct.bnx2x*, i32) #1

declare dso_local i64 @BP_PORT(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_mcp_wait_one(%struct.bnx2x*) #1

declare dso_local i32 @BNX2X_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
