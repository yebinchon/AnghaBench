; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_get_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_get_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_regs = type { i64 }
%struct.bnx2 = type { i32 }

@bnx2_get_regs.reg_boundaries = internal constant [87 x i32] [i32 0, i32 152, i32 1024, i32 1116, i32 2048, i32 2176, i32 3072, i32 3088, i32 3120, i32 3336, i32 4096, i32 4124, i32 4160, i32 4168, i32 4224, i32 4260, i32 5120, i32 5264, i32 5272, i32 5360, i32 5376, i32 5468, i32 5504, i32 5596, i32 5632, i32 5720, i32 5760, i32 5848, i32 6144, i32 6176, i32 6208, i32 6228, i32 6272, i32 6292, i32 6400, i32 6532, i32 7168, i32 7180, i32 7232, i32 7252, i32 7296, i32 7316, i32 7424, i32 7556, i32 8192, i32 8240, i32 9152, i32 9216, i32 10240, i32 10272, i32 10288, i32 10320, i32 11072, i32 11280, i32 12224, i32 12376, i32 15360, i32 15508, i32 16384, i32 16400, i32 16512, i32 16528, i32 17344, i32 17496, i32 19456, i32 19480, i32 19520, i32 19540, i32 20416, i32 20496, i32 21440, i32 21572, i32 23552, i32 23576, i32 23680, i32 23696, i32 24512, i32 24576, i32 25600, i32 25640, i32 26624, i32 26696, i32 26700, i32 26720, i32 26760, i32 26896, i32 32768], align 16
@BNX2_REGDUMP_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_regs*, i8*)* @bnx2_get_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2_get_regs(%struct.net_device* %0, %struct.ethtool_regs* %1, i8* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_regs*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.bnx2*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_regs* %1, %struct.ethtool_regs** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** %7, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %10, align 8
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = call %struct.bnx2* @netdev_priv(%struct.net_device* %16)
  store %struct.bnx2* %17, %struct.bnx2** %11, align 8
  %18 = load %struct.ethtool_regs*, %struct.ethtool_regs** %5, align 8
  %19 = getelementptr inbounds %struct.ethtool_regs, %struct.ethtool_regs* %18, i32 0, i32 0
  store i64 0, i64* %19, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* @BNX2_REGDUMP_LEN, align 4
  %22 = call i32 @memset(i32* %20, i32 0, i32 %21)
  %23 = load %struct.bnx2*, %struct.bnx2** %11, align 8
  %24 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @netif_running(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %3
  br label %67

29:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  %30 = load i32, i32* getelementptr inbounds ([87 x i32], [87 x i32]* @bnx2_get_regs.reg_boundaries, i64 0, i64 0), align 16
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32*, i32** %7, align 8
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  store i32* %34, i32** %7, align 8
  br label %35

35:                                               ; preds = %66, %29
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @BNX2_REGDUMP_LEN, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %67

39:                                               ; preds = %35
  %40 = load %struct.bnx2*, %struct.bnx2** %11, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @BNX2_RD(%struct.bnx2* %40, i32 %41)
  %43 = load i32*, i32** %7, align 8
  %44 = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %44, i32** %7, align 8
  store i32 %42, i32* %43, align 4
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 4
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [87 x i32], [87 x i32]* @bnx2_get_regs.reg_boundaries, i64 0, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %47, %52
  br i1 %53, label %54, label %66

54:                                               ; preds = %39
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, 2
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [87 x i32], [87 x i32]* @bnx2_get_regs.reg_boundaries, i64 0, i64 %57
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %9, align 4
  %60 = load i32*, i32** %10, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32* %63, i32** %7, align 8
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 2
  store i32 %65, i32* %8, align 4
  br label %66

66:                                               ; preds = %54, %39
  br label %35

67:                                               ; preds = %28, %35
  ret void
}

declare dso_local %struct.bnx2* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @netif_running(i32) #1

declare dso_local i32 @BNX2_RD(%struct.bnx2*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
