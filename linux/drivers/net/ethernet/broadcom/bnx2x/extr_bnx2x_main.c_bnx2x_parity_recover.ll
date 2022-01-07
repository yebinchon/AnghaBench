; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_parity_recover.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_parity_recover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i8*, i8* }

@NETIF_MSG_HW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Handling parity\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"State is BNX2X_RECOVERY_INIT\0A\00", align 1
@UNLOAD_RECOVERY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"State is BNX2X_RECOVERY_WAIT\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@BNX2X_RECOVERY_NIC_LOADING = common dso_local global i32 0, align 4
@LOAD_NORMAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"Recovery failed. Power cycle needed\0A\00", align 1
@PCI_D3hot = common dso_local global i32 0, align 4
@BNX2X_RECOVERY_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*)* @bnx2x_parity_recover to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_parity_recover(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  store i32 0, i32* %3, align 4
  %10 = load i32, i32* @NETIF_MSG_HW, align 4
  %11 = call i32 @DP(i32 %10, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %1, %171
  %13 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %14 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %170 [
    i32 129, label %16
    i32 128, label %50
  ]

16:                                               ; preds = %12
  %17 = load i32, i32* @NETIF_MSG_HW, align 4
  %18 = call i32 @DP(i32 %17, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %19 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %20 = call i32 @bnx2x_chk_parity_attn(%struct.bnx2x* %19, i32* %3, i32 0)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @WARN_ON(i32 %24)
  %26 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %27 = call i32 @bnx2x_trylock_leader_lock(%struct.bnx2x* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %16
  %30 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %31 = call i32 @bnx2x_set_reset_in_progress(%struct.bnx2x* %30)
  %32 = load i32, i32* %3, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %36 = call i32 @bnx2x_set_reset_global(%struct.bnx2x* %35)
  br label %37

37:                                               ; preds = %34, %29
  %38 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %39 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %38, i32 0, i32 1
  store i32 1, i32* %39, align 4
  br label %40

40:                                               ; preds = %37, %16
  %41 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %42 = load i32, i32* @UNLOAD_RECOVERY, align 4
  %43 = call i32 @bnx2x_nic_unload(%struct.bnx2x* %41, i32 %42, i32 0)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %172

46:                                               ; preds = %40
  %47 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %48 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %47, i32 0, i32 0
  store i32 128, i32* %48, align 8
  %49 = call i32 (...) @smp_mb()
  br label %171

50:                                               ; preds = %12
  %51 = load i32, i32* @NETIF_MSG_HW, align 4
  %52 = call i32 @DP(i32 %51, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %53 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %54 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %94

57:                                               ; preds = %50
  %58 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %59 = call i32 @BP_PATH(%struct.bnx2x* %58)
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i32 0, i32 1
  store i32 %62, i32* %7, align 4
  %63 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @bnx2x_get_load_status(%struct.bnx2x* %63, i32 %64)
  store i32 %65, i32* %8, align 4
  %66 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %67 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %68 = call i32 @BP_PATH(%struct.bnx2x* %67)
  %69 = call i32 @bnx2x_get_load_status(%struct.bnx2x* %66, i32 %68)
  store i32 %69, i32* %9, align 4
  %70 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %71 = call i32 @bnx2x_reset_is_global(%struct.bnx2x* %70)
  store i32 %71, i32* %3, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %57
  %75 = load i32, i32* %3, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %74
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %77, %57
  %81 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %82 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %81, i32 0, i32 4
  %83 = load i32, i32* @HZ, align 4
  %84 = sdiv i32 %83, 10
  %85 = call i32 @schedule_delayed_work(i32* %82, i32 %84)
  br label %172

86:                                               ; preds = %77, %74
  %87 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %88 = call i32 @bnx2x_leader_reset(%struct.bnx2x* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  %91 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %92 = call i32 @bnx2x_recovery_failed(%struct.bnx2x* %91)
  br label %172

93:                                               ; preds = %86
  br label %171

94:                                               ; preds = %50
  %95 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %96 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %97 = call i32 @BP_PATH(%struct.bnx2x* %96)
  %98 = call i32 @bnx2x_reset_is_done(%struct.bnx2x* %95, i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %113, label %100

100:                                              ; preds = %94
  %101 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %102 = call i32 @bnx2x_trylock_leader_lock(%struct.bnx2x* %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %100
  %105 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %106 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %105, i32 0, i32 1
  store i32 1, i32* %106, align 4
  br label %171

107:                                              ; preds = %100
  %108 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %109 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %108, i32 0, i32 4
  %110 = load i32, i32* @HZ, align 4
  %111 = sdiv i32 %110, 10
  %112 = call i32 @schedule_delayed_work(i32* %109, i32 %111)
  br label %172

113:                                              ; preds = %94
  %114 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %115 = call i32 @bnx2x_reset_is_global(%struct.bnx2x* %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %113
  %118 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %119 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %118, i32 0, i32 4
  %120 = load i32, i32* @HZ, align 4
  %121 = sdiv i32 %120, 10
  %122 = call i32 @schedule_delayed_work(i32* %119, i32 %121)
  br label %172

123:                                              ; preds = %113
  %124 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %125 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 1
  %127 = load i8*, i8** %126, align 8
  store i8* %127, i8** %4, align 8
  %128 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %129 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  %131 = load i8*, i8** %130, align 8
  store i8* %131, i8** %5, align 8
  %132 = load i32, i32* @BNX2X_RECOVERY_NIC_LOADING, align 4
  %133 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %134 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 8
  %135 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %136 = load i32, i32* @LOAD_NORMAL, align 4
  %137 = call i32 @bnx2x_nic_load(%struct.bnx2x* %135, i32 %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %154

139:                                              ; preds = %123
  %140 = load i8*, i8** %5, align 8
  %141 = getelementptr inbounds i8, i8* %140, i32 1
  store i8* %141, i8** %5, align 8
  %142 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %143 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @netdev_err(i32 %144, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %146 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %147 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @netif_device_detach(i32 %148)
  %150 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %151 = load i32, i32* @PCI_D3hot, align 4
  %152 = call i32 @bnx2x_set_power_state(%struct.bnx2x* %150, i32 %151)
  %153 = call i32 (...) @smp_mb()
  br label %161

154:                                              ; preds = %123
  %155 = load i32, i32* @BNX2X_RECOVERY_DONE, align 4
  %156 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %157 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %156, i32 0, i32 0
  store i32 %155, i32* %157, align 8
  %158 = load i8*, i8** %4, align 8
  %159 = getelementptr inbounds i8, i8* %158, i32 1
  store i8* %159, i8** %4, align 8
  %160 = call i32 (...) @smp_mb()
  br label %161

161:                                              ; preds = %154, %139
  %162 = load i8*, i8** %4, align 8
  %163 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %164 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 1
  store i8* %162, i8** %165, align 8
  %166 = load i8*, i8** %5, align 8
  %167 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %168 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 0
  store i8* %166, i8** %169, align 8
  br label %172

170:                                              ; preds = %12
  br label %172

171:                                              ; preds = %104, %93, %46
  br label %12

172:                                              ; preds = %170, %161, %117, %107, %90, %80, %45
  ret void
}

declare dso_local i32 @DP(i32, i8*) #1

declare dso_local i32 @bnx2x_chk_parity_attn(%struct.bnx2x*, i32*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @bnx2x_trylock_leader_lock(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_set_reset_in_progress(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_set_reset_global(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_nic_unload(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @BP_PATH(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_get_load_status(%struct.bnx2x*, i32) #1

declare dso_local i32 @bnx2x_reset_is_global(%struct.bnx2x*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @bnx2x_leader_reset(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_recovery_failed(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_reset_is_done(%struct.bnx2x*, i32) #1

declare dso_local i32 @bnx2x_nic_load(%struct.bnx2x*, i32) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @netif_device_detach(i32) #1

declare dso_local i32 @bnx2x_set_power_state(%struct.bnx2x*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
