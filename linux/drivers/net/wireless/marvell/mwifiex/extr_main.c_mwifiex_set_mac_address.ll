; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_main.c_mwifiex_set_mac_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_main.c_mwifiex_set_mac_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i64, i32*, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { %struct.mwifiex_private** }
%struct.net_device = type { i32 }

@MWIFIEX_BSS_TYPE_ANY = common dso_local global i64 0, align 8
@ENOTSUPP = common dso_local global i32 0, align 4
@MWIFIEX_BSS_TYPE_P2P = common dso_local global i64 0, align 8
@MWIFIEX_MAC_LOCAL_ADMIN_BIT = common dso_local global i64 0, align 8
@HostCmd_CMD_802_11_MAC_ADDRESS = common dso_local global i32 0, align 4
@HostCmd_ACT_GEN_SET = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"set mac address failed: ret=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwifiex_set_mac_address(%struct.mwifiex_private* %0, %struct.net_device* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mwifiex_private*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %13 = load %struct.mwifiex_private*, %struct.mwifiex_private** %6, align 8
  %14 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @ether_addr_to_u64(i32* %15)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32*, i32** %9, align 8
  %21 = call i32 @ether_addr_to_u64(i32* %20)
  store i32 %21, i32* %11, align 4
  br label %77

22:                                               ; preds = %4
  %23 = load %struct.mwifiex_private*, %struct.mwifiex_private** %6, align 8
  %24 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @MWIFIEX_BSS_TYPE_ANY, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i32, i32* @ENOTSUPP, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %110

31:                                               ; preds = %22
  %32 = load i32, i32* %12, align 4
  store i32 %32, i32* %11, align 4
  %33 = load %struct.mwifiex_private*, %struct.mwifiex_private** %6, align 8
  %34 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @MWIFIEX_BSS_TYPE_P2P, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %31
  %39 = load i64, i64* @MWIFIEX_MAC_LOCAL_ADMIN_BIT, align 8
  %40 = call i32 @BIT_ULL(i64 %39)
  %41 = load i32, i32* %11, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %11, align 4
  %43 = load %struct.mwifiex_private*, %struct.mwifiex_private** %6, align 8
  %44 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %47, %45
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %11, align 4
  br label %76

50:                                               ; preds = %31
  %51 = load %struct.mwifiex_private*, %struct.mwifiex_private** %6, align 8
  %52 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %51, i32 0, i32 2
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load %struct.mwifiex_private**, %struct.mwifiex_private*** %54, align 8
  %56 = getelementptr inbounds %struct.mwifiex_private*, %struct.mwifiex_private** %55, i64 0
  %57 = load %struct.mwifiex_private*, %struct.mwifiex_private** %56, align 8
  %58 = load %struct.mwifiex_private*, %struct.mwifiex_private** %6, align 8
  %59 = icmp ne %struct.mwifiex_private* %57, %58
  br i1 %59, label %60, label %75

60:                                               ; preds = %50
  %61 = load %struct.mwifiex_private*, %struct.mwifiex_private** %6, align 8
  %62 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %63, 8
  %65 = call i32 @BIT_ULL(i64 %64)
  %66 = load i32, i32* %11, align 4
  %67 = xor i32 %66, %65
  store i32 %67, i32* %11, align 4
  %68 = load %struct.mwifiex_private*, %struct.mwifiex_private** %6, align 8
  %69 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %72, %70
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %11, align 4
  br label %75

75:                                               ; preds = %60, %50
  br label %76

76:                                               ; preds = %75, %38
  br label %77

77:                                               ; preds = %76, %19
  %78 = load i32, i32* %11, align 4
  %79 = load %struct.mwifiex_private*, %struct.mwifiex_private** %6, align 8
  %80 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @u64_to_ether_addr(i32 %78, i32* %81)
  %83 = load %struct.mwifiex_private*, %struct.mwifiex_private** %6, align 8
  %84 = load i32, i32* @HostCmd_CMD_802_11_MAC_ADDRESS, align 4
  %85 = load i32, i32* @HostCmd_ACT_GEN_SET, align 4
  %86 = call i32 @mwifiex_send_cmd(%struct.mwifiex_private* %83, i32 %84, i32 %85, i32 0, i32* null, i32 1)
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %10, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %102

89:                                               ; preds = %77
  %90 = load i32, i32* %12, align 4
  %91 = load %struct.mwifiex_private*, %struct.mwifiex_private** %6, align 8
  %92 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = call i32 @u64_to_ether_addr(i32 %90, i32* %93)
  %95 = load %struct.mwifiex_private*, %struct.mwifiex_private** %6, align 8
  %96 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %95, i32 0, i32 2
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = load i32, i32* @ERROR, align 4
  %99 = load i32, i32* %10, align 4
  %100 = call i32 @mwifiex_dbg(%struct.TYPE_2__* %97, i32 %98, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %99)
  %101 = load i32, i32* %10, align 4
  store i32 %101, i32* %5, align 4
  br label %110

102:                                              ; preds = %77
  %103 = load %struct.net_device*, %struct.net_device** %7, align 8
  %104 = getelementptr inbounds %struct.net_device, %struct.net_device* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.mwifiex_private*, %struct.mwifiex_private** %6, align 8
  %107 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = call i32 @ether_addr_copy(i32 %105, i32* %108)
  store i32 0, i32* %5, align 4
  br label %110

110:                                              ; preds = %102, %89, %28
  %111 = load i32, i32* %5, align 4
  ret i32 %111
}

declare dso_local i32 @ether_addr_to_u64(i32*) #1

declare dso_local i32 @BIT_ULL(i64) #1

declare dso_local i32 @u64_to_ether_addr(i32, i32*) #1

declare dso_local i32 @mwifiex_send_cmd(%struct.mwifiex_private*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @mwifiex_dbg(%struct.TYPE_2__*, i32, i8*, i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
