; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_alloc_bad_rbuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_alloc_bad_rbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BNX2_MISC_ENABLE_SET_BITS = common dso_local global i32 0, align 4
@BNX2_MISC_ENABLE_SET_BITS_RX_MBUF_ENABLE = common dso_local global i32 0, align 4
@BNX2_RBUF_STATUS1 = common dso_local global i32 0, align 4
@BNX2_RBUF_STATUS1_FREE_COUNT = common dso_local global i32 0, align 4
@BNX2_RBUF_COMMAND = common dso_local global i32 0, align 4
@BNX2_RBUF_COMMAND_ALLOC_REQ = common dso_local global i32 0, align 4
@BNX2_RBUF_FW_BUF_ALLOC = common dso_local global i32 0, align 4
@BNX2_RBUF_FW_BUF_ALLOC_VALUE = common dso_local global i32 0, align 4
@BNX2_RBUF_FW_BUF_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2*)* @bnx2_alloc_bad_rbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2_alloc_bad_rbuf(%struct.bnx2* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnx2*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bnx2* %0, %struct.bnx2** %3, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call i32* @kmalloc_array(i32 512, i32 4, i32 %7)
  store i32* %8, i32** %4, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %77

14:                                               ; preds = %1
  %15 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %16 = load i32, i32* @BNX2_MISC_ENABLE_SET_BITS, align 4
  %17 = load i32, i32* @BNX2_MISC_ENABLE_SET_BITS_RX_MBUF_ENABLE, align 4
  %18 = call i32 @BNX2_WR(%struct.bnx2* %15, i32 %16, i32 %17)
  store i32 0, i32* %5, align 4
  %19 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %20 = load i32, i32* @BNX2_RBUF_STATUS1, align 4
  %21 = call i32 @bnx2_reg_rd_ind(%struct.bnx2* %19, i32 %20)
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %49, %14
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @BNX2_RBUF_STATUS1_FREE_COUNT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %53

27:                                               ; preds = %22
  %28 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %29 = load i32, i32* @BNX2_RBUF_COMMAND, align 4
  %30 = load i32, i32* @BNX2_RBUF_COMMAND_ALLOC_REQ, align 4
  %31 = call i32 @bnx2_reg_wr_ind(%struct.bnx2* %28, i32 %29, i32 %30)
  %32 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %33 = load i32, i32* @BNX2_RBUF_FW_BUF_ALLOC, align 4
  %34 = call i32 @bnx2_reg_rd_ind(%struct.bnx2* %32, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* @BNX2_RBUF_FW_BUF_ALLOC_VALUE, align 4
  %36 = load i32, i32* %6, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = and i32 %38, 512
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %27
  %42 = load i32, i32* %6, align 4
  %43 = load i32*, i32** %4, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  store i32 %42, i32* %46, align 4
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %41, %27
  %50 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %51 = load i32, i32* @BNX2_RBUF_STATUS1, align 4
  %52 = call i32 @bnx2_reg_rd_ind(%struct.bnx2* %50, i32 %51)
  store i32 %52, i32* %6, align 4
  br label %22

53:                                               ; preds = %22
  br label %54

54:                                               ; preds = %57, %53
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %74

57:                                               ; preds = %54
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %5, align 4
  %60 = load i32*, i32** %4, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = shl i32 %65, 9
  %67 = load i32, i32* %6, align 4
  %68 = or i32 %66, %67
  %69 = or i32 %68, 1
  store i32 %69, i32* %6, align 4
  %70 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %71 = load i32, i32* @BNX2_RBUF_FW_BUF_FREE, align 4
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @bnx2_reg_wr_ind(%struct.bnx2* %70, i32 %71, i32 %72)
  br label %54

74:                                               ; preds = %54
  %75 = load i32*, i32** %4, align 8
  %76 = call i32 @kfree(i32* %75)
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %74, %11
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @BNX2_WR(%struct.bnx2*, i32, i32) #1

declare dso_local i32 @bnx2_reg_rd_ind(%struct.bnx2*, i32) #1

declare dso_local i32 @bnx2_reg_wr_ind(%struct.bnx2*, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
