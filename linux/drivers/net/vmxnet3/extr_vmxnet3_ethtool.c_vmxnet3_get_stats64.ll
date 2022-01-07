; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/vmxnet3/extr_vmxnet3_ethtool.c_vmxnet3_get_stats64.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/vmxnet3/extr_vmxnet3_ethtool.c_vmxnet3_get_stats64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.rtnl_link_stats64 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vmxnet3_adapter = type { i32, i32, %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.TYPE_5__*, i32 }
%struct.TYPE_8__ = type { %struct.vmxnet3_rq_driver_stats }
%struct.vmxnet3_rq_driver_stats = type { i64 }
%struct.TYPE_7__ = type { %struct.UPT1_RxStats }
%struct.UPT1_RxStats = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_6__ = type { %struct.vmxnet3_tq_driver_stats }
%struct.vmxnet3_tq_driver_stats = type { i64 }
%struct.TYPE_5__ = type { %struct.UPT1_TxStats }
%struct.UPT1_TxStats = type { i64, i64, i64, i64, i64, i64, i64 }

@VMXNET3_REG_CMD = common dso_local global i32 0, align 4
@VMXNET3_CMD_GET_STATS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vmxnet3_get_stats64(%struct.net_device* %0, %struct.rtnl_link_stats64* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.rtnl_link_stats64*, align 8
  %5 = alloca %struct.vmxnet3_adapter*, align 8
  %6 = alloca %struct.vmxnet3_tq_driver_stats*, align 8
  %7 = alloca %struct.vmxnet3_rq_driver_stats*, align 8
  %8 = alloca %struct.UPT1_TxStats*, align 8
  %9 = alloca %struct.UPT1_RxStats*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.rtnl_link_stats64* %1, %struct.rtnl_link_stats64** %4, align 8
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = call %struct.vmxnet3_adapter* @netdev_priv(%struct.net_device* %12)
  store %struct.vmxnet3_adapter* %13, %struct.vmxnet3_adapter** %5, align 8
  %14 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %5, align 8
  %15 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %14, i32 0, i32 6
  %16 = load i64, i64* %10, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %5, align 8
  %19 = load i32, i32* @VMXNET3_REG_CMD, align 4
  %20 = load i32, i32* @VMXNET3_CMD_GET_STATS, align 4
  %21 = call i32 @VMXNET3_WRITE_BAR1_REG(%struct.vmxnet3_adapter* %18, i32 %19, i32 %20)
  %22 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %5, align 8
  %23 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %22, i32 0, i32 6
  %24 = load i64, i64* %10, align 8
  %25 = call i32 @spin_unlock_irqrestore(i32* %23, i64 %24)
  store i32 0, i32* %11, align 4
  br label %26

26:                                               ; preds = %99, %2
  %27 = load i32, i32* %11, align 4
  %28 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %5, align 8
  %29 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %102

32:                                               ; preds = %26
  %33 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %5, align 8
  %34 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %33, i32 0, i32 5
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  store %struct.UPT1_TxStats* %39, %struct.UPT1_TxStats** %8, align 8
  %40 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %5, align 8
  %41 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %40, i32 0, i32 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = load i32, i32* %11, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  store %struct.vmxnet3_tq_driver_stats* %46, %struct.vmxnet3_tq_driver_stats** %6, align 8
  %47 = load %struct.UPT1_TxStats*, %struct.UPT1_TxStats** %8, align 8
  %48 = getelementptr inbounds %struct.UPT1_TxStats, %struct.UPT1_TxStats* %47, i32 0, i32 6
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.UPT1_TxStats*, %struct.UPT1_TxStats** %8, align 8
  %51 = getelementptr inbounds %struct.UPT1_TxStats, %struct.UPT1_TxStats* %50, i32 0, i32 5
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %49, %52
  %54 = load %struct.UPT1_TxStats*, %struct.UPT1_TxStats** %8, align 8
  %55 = getelementptr inbounds %struct.UPT1_TxStats, %struct.UPT1_TxStats* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %53, %56
  %58 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %59 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %58, i32 0, i32 8
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %61, %57
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %59, align 4
  %64 = load %struct.UPT1_TxStats*, %struct.UPT1_TxStats** %8, align 8
  %65 = getelementptr inbounds %struct.UPT1_TxStats, %struct.UPT1_TxStats* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.UPT1_TxStats*, %struct.UPT1_TxStats** %8, align 8
  %68 = getelementptr inbounds %struct.UPT1_TxStats, %struct.UPT1_TxStats* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %66, %69
  %71 = load %struct.UPT1_TxStats*, %struct.UPT1_TxStats** %8, align 8
  %72 = getelementptr inbounds %struct.UPT1_TxStats, %struct.UPT1_TxStats* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %70, %73
  %75 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %76 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %75, i32 0, i32 7
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %78, %74
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %76, align 4
  %81 = load %struct.UPT1_TxStats*, %struct.UPT1_TxStats** %8, align 8
  %82 = getelementptr inbounds %struct.UPT1_TxStats, %struct.UPT1_TxStats* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %85 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %84, i32 0, i32 6
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %87, %83
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %85, align 4
  %90 = load %struct.vmxnet3_tq_driver_stats*, %struct.vmxnet3_tq_driver_stats** %6, align 8
  %91 = getelementptr inbounds %struct.vmxnet3_tq_driver_stats, %struct.vmxnet3_tq_driver_stats* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %94 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = add nsw i64 %96, %92
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %94, align 4
  br label %99

99:                                               ; preds = %32
  %100 = load i32, i32* %11, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %11, align 4
  br label %26

102:                                              ; preds = %26
  store i32 0, i32* %11, align 4
  br label %103

103:                                              ; preds = %185, %102
  %104 = load i32, i32* %11, align 4
  %105 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %5, align 8
  %106 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp slt i32 %104, %107
  br i1 %108, label %109, label %188

109:                                              ; preds = %103
  %110 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %5, align 8
  %111 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %110, i32 0, i32 3
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %111, align 8
  %113 = load i32, i32* %11, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  store %struct.UPT1_RxStats* %116, %struct.UPT1_RxStats** %9, align 8
  %117 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %5, align 8
  %118 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %117, i32 0, i32 2
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %118, align 8
  %120 = load i32, i32* %11, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  store %struct.vmxnet3_rq_driver_stats* %123, %struct.vmxnet3_rq_driver_stats** %7, align 8
  %124 = load %struct.UPT1_RxStats*, %struct.UPT1_RxStats** %9, align 8
  %125 = getelementptr inbounds %struct.UPT1_RxStats, %struct.UPT1_RxStats* %124, i32 0, i32 6
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.UPT1_RxStats*, %struct.UPT1_RxStats** %9, align 8
  %128 = getelementptr inbounds %struct.UPT1_RxStats, %struct.UPT1_RxStats* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = add nsw i64 %126, %129
  %131 = load %struct.UPT1_RxStats*, %struct.UPT1_RxStats** %9, align 8
  %132 = getelementptr inbounds %struct.UPT1_RxStats, %struct.UPT1_RxStats* %131, i32 0, i32 5
  %133 = load i64, i64* %132, align 8
  %134 = add nsw i64 %130, %133
  %135 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %136 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 4
  %138 = sext i32 %137 to i64
  %139 = add nsw i64 %138, %134
  %140 = trunc i64 %139 to i32
  store i32 %140, i32* %136, align 4
  %141 = load %struct.UPT1_RxStats*, %struct.UPT1_RxStats** %9, align 8
  %142 = getelementptr inbounds %struct.UPT1_RxStats, %struct.UPT1_RxStats* %141, i32 0, i32 4
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.UPT1_RxStats*, %struct.UPT1_RxStats** %9, align 8
  %145 = getelementptr inbounds %struct.UPT1_RxStats, %struct.UPT1_RxStats* %144, i32 0, i32 3
  %146 = load i64, i64* %145, align 8
  %147 = add nsw i64 %143, %146
  %148 = load %struct.UPT1_RxStats*, %struct.UPT1_RxStats** %9, align 8
  %149 = getelementptr inbounds %struct.UPT1_RxStats, %struct.UPT1_RxStats* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = add nsw i64 %147, %150
  %152 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %153 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = sext i32 %154 to i64
  %156 = add nsw i64 %155, %151
  %157 = trunc i64 %156 to i32
  store i32 %157, i32* %153, align 4
  %158 = load %struct.UPT1_RxStats*, %struct.UPT1_RxStats** %9, align 8
  %159 = getelementptr inbounds %struct.UPT1_RxStats, %struct.UPT1_RxStats* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %162 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = sext i32 %163 to i64
  %165 = add nsw i64 %164, %160
  %166 = trunc i64 %165 to i32
  store i32 %166, i32* %162, align 4
  %167 = load %struct.vmxnet3_rq_driver_stats*, %struct.vmxnet3_rq_driver_stats** %7, align 8
  %168 = getelementptr inbounds %struct.vmxnet3_rq_driver_stats, %struct.vmxnet3_rq_driver_stats* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %171 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = sext i32 %172 to i64
  %174 = add nsw i64 %173, %169
  %175 = trunc i64 %174 to i32
  store i32 %175, i32* %171, align 4
  %176 = load %struct.UPT1_RxStats*, %struct.UPT1_RxStats** %9, align 8
  %177 = getelementptr inbounds %struct.UPT1_RxStats, %struct.UPT1_RxStats* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %180 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = sext i32 %181 to i64
  %183 = add nsw i64 %182, %178
  %184 = trunc i64 %183 to i32
  store i32 %184, i32* %180, align 4
  br label %185

185:                                              ; preds = %109
  %186 = load i32, i32* %11, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %11, align 4
  br label %103

188:                                              ; preds = %103
  ret void
}

declare dso_local %struct.vmxnet3_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @VMXNET3_WRITE_BAR1_REG(%struct.vmxnet3_adapter*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
