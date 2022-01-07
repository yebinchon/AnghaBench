; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans.c_iwl_trans_pcie_wait_txq_empty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans.c_iwl_trans_pcie_wait_txq_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }
%struct.iwl_trans_pcie = type { %struct.iwl_txq**, i32* }
%struct.iwl_txq = type { i64, i64, i32, i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@STATUS_TRANS_DEAD = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Emptying queue %d...\0A\00", align 1
@IWL_FLUSH_WAIT_MS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"WR pointer moved while flushing %d -> %d\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"fail to flush all tx fifo queues Q %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Queue %d is now empty.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_trans*, i32)* @iwl_trans_pcie_wait_txq_empty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_trans_pcie_wait_txq_empty(%struct.iwl_trans* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_trans*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwl_trans_pcie*, align 8
  %7 = alloca %struct.iwl_txq*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.iwl_trans* %0, %struct.iwl_trans** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %13 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %12)
  store %struct.iwl_trans_pcie* %13, %struct.iwl_trans_pcie** %6, align 8
  %14 = load i64, i64* @jiffies, align 8
  store i64 %14, i64* %8, align 8
  %15 = load i32, i32* @STATUS_TRANS_DEAD, align 4
  %16 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %17 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %16, i32 0, i32 0
  %18 = call i64 @test_bit(i32 %15, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %155

23:                                               ; preds = %2
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %6, align 8
  %26 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = call i64 @test_bit(i32 %24, i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %155

33:                                               ; preds = %23
  %34 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @IWL_DEBUG_TX_QUEUES(%struct.iwl_trans* %34, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %6, align 8
  %38 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %37, i32 0, i32 0
  %39 = load %struct.iwl_txq**, %struct.iwl_txq*** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.iwl_txq*, %struct.iwl_txq** %39, i64 %41
  %43 = load %struct.iwl_txq*, %struct.iwl_txq** %42, align 8
  store %struct.iwl_txq* %43, %struct.iwl_txq** %7, align 8
  %44 = load %struct.iwl_txq*, %struct.iwl_txq** %7, align 8
  %45 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %44, i32 0, i32 2
  %46 = call i32 @spin_lock_bh(i32* %45)
  %47 = load %struct.iwl_txq*, %struct.iwl_txq** %7, align 8
  %48 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %33
  %52 = load %struct.iwl_txq*, %struct.iwl_txq** %7, align 8
  %53 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %52, i32 0, i32 3
  %54 = call i32 @skb_queue_empty(i32* %53)
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  br label %57

57:                                               ; preds = %51, %33
  %58 = phi i1 [ true, %33 ], [ %56, %51 ]
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %9, align 4
  %60 = load %struct.iwl_txq*, %struct.iwl_txq** %7, align 8
  %61 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %60, i32 0, i32 2
  %62 = call i32 @spin_unlock_bh(i32* %61)
  %63 = load %struct.iwl_txq*, %struct.iwl_txq** %7, align 8
  %64 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i64 @READ_ONCE(i64 %65)
  store i64 %66, i64* %10, align 8
  br label %67

67:                                               ; preds = %128, %57
  %68 = load %struct.iwl_txq*, %struct.iwl_txq** %7, align 8
  %69 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.iwl_txq*, %struct.iwl_txq** %7, align 8
  %72 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i64 @READ_ONCE(i64 %73)
  %75 = icmp ne i64 %70, %74
  br i1 %75, label %79, label %76

76:                                               ; preds = %67
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %76, %67
  %80 = load i64, i64* @jiffies, align 8
  %81 = load i64, i64* %8, align 8
  %82 = load i32, i32* @IWL_FLUSH_WAIT_MS, align 4
  %83 = call i64 @msecs_to_jiffies(i32 %82)
  %84 = add i64 %81, %83
  %85 = call i32 @time_after(i64 %80, i64 %84)
  %86 = icmp ne i32 %85, 0
  %87 = xor i1 %86, true
  br label %88

88:                                               ; preds = %79, %76
  %89 = phi i1 [ false, %76 ], [ %87, %79 ]
  br i1 %89, label %90, label %134

90:                                               ; preds = %88
  %91 = load %struct.iwl_txq*, %struct.iwl_txq** %7, align 8
  %92 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call i64 @READ_ONCE(i64 %93)
  store i64 %94, i64* %11, align 8
  %95 = load i64, i64* %10, align 8
  %96 = load i64, i64* %11, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %90
  %99 = load i32, i32* %9, align 4
  %100 = icmp ne i32 %99, 0
  %101 = xor i1 %100, true
  br label %102

102:                                              ; preds = %98, %90
  %103 = phi i1 [ false, %90 ], [ %101, %98 ]
  %104 = zext i1 %103 to i32
  %105 = load i64, i64* %10, align 8
  %106 = load i64, i64* %11, align 8
  %107 = call i64 @WARN_ONCE(i32 %104, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %105, i64 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %102
  %110 = load i32, i32* @ETIMEDOUT, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %3, align 4
  br label %155

112:                                              ; preds = %102
  %113 = load i64, i64* %11, align 8
  store i64 %113, i64* %10, align 8
  %114 = call i32 @usleep_range(i32 1000, i32 2000)
  %115 = load %struct.iwl_txq*, %struct.iwl_txq** %7, align 8
  %116 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %115, i32 0, i32 2
  %117 = call i32 @spin_lock_bh(i32* %116)
  %118 = load %struct.iwl_txq*, %struct.iwl_txq** %7, align 8
  %119 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 8
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %128, label %122

122:                                              ; preds = %112
  %123 = load %struct.iwl_txq*, %struct.iwl_txq** %7, align 8
  %124 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %123, i32 0, i32 3
  %125 = call i32 @skb_queue_empty(i32* %124)
  %126 = icmp ne i32 %125, 0
  %127 = xor i1 %126, true
  br label %128

128:                                              ; preds = %122, %112
  %129 = phi i1 [ true, %112 ], [ %127, %122 ]
  %130 = zext i1 %129 to i32
  store i32 %130, i32* %9, align 4
  %131 = load %struct.iwl_txq*, %struct.iwl_txq** %7, align 8
  %132 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %131, i32 0, i32 2
  %133 = call i32 @spin_unlock_bh(i32* %132)
  br label %67

134:                                              ; preds = %88
  %135 = load %struct.iwl_txq*, %struct.iwl_txq** %7, align 8
  %136 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.iwl_txq*, %struct.iwl_txq** %7, align 8
  %139 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %137, %140
  br i1 %141, label %142, label %151

142:                                              ; preds = %134
  %143 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %144 = load i32, i32* %5, align 4
  %145 = call i32 @IWL_ERR(%struct.iwl_trans* %143, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %144)
  %146 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %147 = load %struct.iwl_txq*, %struct.iwl_txq** %7, align 8
  %148 = call i32 @iwl_trans_pcie_log_scd_error(%struct.iwl_trans* %146, %struct.iwl_txq* %147)
  %149 = load i32, i32* @ETIMEDOUT, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %3, align 4
  br label %155

151:                                              ; preds = %134
  %152 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %153 = load i32, i32* %5, align 4
  %154 = call i32 @IWL_DEBUG_TX_QUEUES(%struct.iwl_trans* %152, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %153)
  store i32 0, i32* %3, align 4
  br label %155

155:                                              ; preds = %151, %142, %109, %30, %20
  %156 = load i32, i32* %3, align 4
  ret i32 %156
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @IWL_DEBUG_TX_QUEUES(%struct.iwl_trans*, i8*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i64 @READ_ONCE(i64) #1

declare dso_local i32 @time_after(i64, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @WARN_ONCE(i32, i8*, i64, i64) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_trans*, i8*, i32) #1

declare dso_local i32 @iwl_trans_pcie_log_scd_error(%struct.iwl_trans*, %struct.iwl_txq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
