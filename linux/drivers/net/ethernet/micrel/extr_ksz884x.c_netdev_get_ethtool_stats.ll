; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_netdev_get_ethtool_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_netdev_get_ethtool_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_stats = type { i32 }
%struct.dev_priv = type { %struct.ksz_port, %struct.dev_info* }
%struct.ksz_port = type { i32, i32 }
%struct.dev_info = type { %struct.TYPE_4__*, i32, i32, %struct.ksz_hw }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ksz_hw = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }

@TOTAL_PORT_COUNTER_NUM = common dso_local global i32 0, align 4
@SWITCH_PORT_NUM = common dso_local global i32 0, align 4
@media_connected = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_stats*, i32*)* @netdev_get_ethtool_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netdev_get_ethtool_stats(%struct.net_device* %0, %struct.ethtool_stats* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_stats*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.dev_priv*, align 8
  %8 = alloca %struct.dev_info*, align 8
  %9 = alloca %struct.ksz_hw*, align 8
  %10 = alloca %struct.ksz_port*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_stats* %1, %struct.ethtool_stats** %5, align 8
  store i32* %2, i32** %6, align 8
  %18 = load %struct.net_device*, %struct.net_device** %4, align 8
  %19 = call %struct.dev_priv* @netdev_priv(%struct.net_device* %18)
  store %struct.dev_priv* %19, %struct.dev_priv** %7, align 8
  %20 = load %struct.dev_priv*, %struct.dev_priv** %7, align 8
  %21 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %20, i32 0, i32 1
  %22 = load %struct.dev_info*, %struct.dev_info** %21, align 8
  store %struct.dev_info* %22, %struct.dev_info** %8, align 8
  %23 = load %struct.dev_info*, %struct.dev_info** %8, align 8
  %24 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %23, i32 0, i32 3
  store %struct.ksz_hw* %24, %struct.ksz_hw** %9, align 8
  %25 = load %struct.dev_priv*, %struct.dev_priv** %7, align 8
  %26 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %25, i32 0, i32 0
  store %struct.ksz_port* %26, %struct.ksz_port** %10, align 8
  %27 = load %struct.ethtool_stats*, %struct.ethtool_stats** %5, align 8
  %28 = getelementptr inbounds %struct.ethtool_stats, %struct.ethtool_stats* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* @TOTAL_PORT_COUNTER_NUM, align 4
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %16, align 8
  %33 = alloca i32, i64 %31, align 16
  store i64 %31, i64* %17, align 8
  %34 = load %struct.dev_info*, %struct.dev_info** %8, align 8
  %35 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %34, i32 0, i32 2
  %36 = call i32 @mutex_lock(i32* %35)
  %37 = load i32, i32* @SWITCH_PORT_NUM, align 4
  store i32 %37, i32* %13, align 4
  store i32 0, i32* %12, align 4
  %38 = load %struct.ksz_port*, %struct.ksz_port** %10, align 8
  %39 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %14, align 4
  br label %41

41:                                               ; preds = %73, %3
  %42 = load i32, i32* %12, align 4
  %43 = load %struct.ksz_port*, %struct.ksz_port** %10, align 8
  %44 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %78

47:                                               ; preds = %41
  %48 = load i64, i64* @media_connected, align 8
  %49 = load %struct.ksz_hw*, %struct.ksz_hw** %9, align 8
  %50 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %49, i32 0, i32 1
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = load i32, i32* %14, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %48, %56
  br i1 %57, label %58, label %72

58:                                               ; preds = %47
  %59 = load %struct.dev_info*, %struct.dev_info** %8, align 8
  %60 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = load i32, i32* %14, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  store i32 1, i32* %65, align 4
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* @SWITCH_PORT_NUM, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %58
  %70 = load i32, i32* %14, align 4
  store i32 %70, i32* %13, align 4
  br label %71

71:                                               ; preds = %69, %58
  br label %72

72:                                               ; preds = %71, %47
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %12, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %14, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %14, align 4
  br label %41

78:                                               ; preds = %41
  %79 = load %struct.dev_info*, %struct.dev_info** %8, align 8
  %80 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %79, i32 0, i32 2
  %81 = call i32 @mutex_unlock(i32* %80)
  %82 = load i32, i32* %13, align 4
  %83 = load i32, i32* @SWITCH_PORT_NUM, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %78
  %86 = load %struct.dev_info*, %struct.dev_info** %8, align 8
  %87 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %86, i32 0, i32 1
  %88 = call i32 @schedule_work(i32* %87)
  br label %89

89:                                               ; preds = %85, %78
  %90 = load %struct.ksz_port*, %struct.ksz_port** %10, align 8
  %91 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 1, %92
  br i1 %93, label %94, label %121

94:                                               ; preds = %89
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* @SWITCH_PORT_NUM, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %121

98:                                               ; preds = %94
  %99 = load i32, i32* %13, align 4
  store i32 %99, i32* %14, align 4
  %100 = load %struct.dev_info*, %struct.dev_info** %8, align 8
  %101 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %100, i32 0, i32 0
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = load i32, i32* %14, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.dev_info*, %struct.dev_info** %8, align 8
  %109 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %108, i32 0, i32 0
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = load i32, i32* %14, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = icmp eq i32 2, %115
  %117 = zext i1 %116 to i32
  %118 = load i32, i32* @HZ, align 4
  %119 = mul nsw i32 %118, 1
  %120 = call i32 @wait_event_interruptible_timeout(i32 %107, i32 %117, i32 %119)
  store i32 %120, i32* %15, align 4
  br label %196

121:                                              ; preds = %94, %89
  store i32 0, i32* %12, align 4
  %122 = load i32, i32* %13, align 4
  store i32 %122, i32* %14, align 4
  br label %123

123:                                              ; preds = %190, %121
  %124 = load i32, i32* %12, align 4
  %125 = load %struct.ksz_port*, %struct.ksz_port** %10, align 8
  %126 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %13, align 4
  %129 = sub nsw i32 %127, %128
  %130 = icmp slt i32 %124, %129
  br i1 %130, label %131, label %195

131:                                              ; preds = %123
  %132 = load i32, i32* %12, align 4
  %133 = icmp eq i32 0, %132
  br i1 %133, label %134, label %156

134:                                              ; preds = %131
  %135 = load %struct.dev_info*, %struct.dev_info** %8, align 8
  %136 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %135, i32 0, i32 0
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %136, align 8
  %138 = load i32, i32* %14, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.dev_info*, %struct.dev_info** %8, align 8
  %144 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %143, i32 0, i32 0
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %144, align 8
  %146 = load i32, i32* %14, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = icmp eq i32 2, %150
  %152 = zext i1 %151 to i32
  %153 = load i32, i32* @HZ, align 4
  %154 = mul nsw i32 %153, 2
  %155 = call i32 @wait_event_interruptible_timeout(i32 %142, i32 %152, i32 %154)
  store i32 %155, i32* %15, align 4
  br label %189

156:                                              ; preds = %131
  %157 = load %struct.ksz_hw*, %struct.ksz_hw** %9, align 8
  %158 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %157, i32 0, i32 1
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** %158, align 8
  %160 = load i32, i32* %14, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %188

166:                                              ; preds = %156
  %167 = load %struct.dev_info*, %struct.dev_info** %8, align 8
  %168 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %167, i32 0, i32 0
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** %168, align 8
  %170 = load i32, i32* %14, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.dev_info*, %struct.dev_info** %8, align 8
  %176 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %175, i32 0, i32 0
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %176, align 8
  %178 = load i32, i32* %14, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = icmp eq i32 2, %182
  %184 = zext i1 %183 to i32
  %185 = load i32, i32* @HZ, align 4
  %186 = mul nsw i32 %185, 1
  %187 = call i32 @wait_event_interruptible_timeout(i32 %174, i32 %184, i32 %186)
  store i32 %187, i32* %15, align 4
  br label %188

188:                                              ; preds = %166, %156
  br label %189

189:                                              ; preds = %188, %134
  br label %190

190:                                              ; preds = %189
  %191 = load i32, i32* %12, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %12, align 4
  %193 = load i32, i32* %14, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %14, align 4
  br label %123

195:                                              ; preds = %123
  br label %196

196:                                              ; preds = %195, %98
  %197 = load %struct.ksz_hw*, %struct.ksz_hw** %9, align 8
  %198 = load %struct.ksz_port*, %struct.ksz_port** %10, align 8
  %199 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.ksz_port*, %struct.ksz_port** %10, align 8
  %202 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @get_mib_counters(%struct.ksz_hw* %197, i32 %200, i32 %203, i32* %33)
  %205 = load %struct.ksz_hw*, %struct.ksz_hw** %9, align 8
  %206 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  store i32 %207, i32* %13, align 4
  %208 = load i32, i32* %13, align 4
  %209 = load i32, i32* %11, align 4
  %210 = icmp sgt i32 %208, %209
  br i1 %210, label %211, label %213

211:                                              ; preds = %196
  %212 = load i32, i32* %11, align 4
  store i32 %212, i32* %13, align 4
  br label %213

213:                                              ; preds = %211, %196
  %214 = load i32, i32* %13, align 4
  %215 = load i32, i32* %11, align 4
  %216 = sub nsw i32 %215, %214
  store i32 %216, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %217

217:                                              ; preds = %228, %213
  %218 = load i32, i32* %12, align 4
  %219 = load i32, i32* %13, align 4
  %220 = icmp slt i32 %218, %219
  br i1 %220, label %221, label %231

221:                                              ; preds = %217
  %222 = load i32, i32* %12, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %33, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = load i32*, i32** %6, align 8
  %227 = getelementptr inbounds i32, i32* %226, i32 1
  store i32* %227, i32** %6, align 8
  store i32 %225, i32* %226, align 4
  br label %228

228:                                              ; preds = %221
  %229 = load i32, i32* %12, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %12, align 4
  br label %217

231:                                              ; preds = %217
  %232 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %232)
  ret void
}

declare dso_local %struct.dev_priv* @netdev_priv(%struct.net_device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @get_mib_counters(%struct.ksz_hw*, i32, i32, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
