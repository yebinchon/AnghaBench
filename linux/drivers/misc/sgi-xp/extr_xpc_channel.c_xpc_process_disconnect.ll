; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xpc_channel.c_xpc_process_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xpc_channel.c_xpc_process_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xpc_partition = type { i64, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32* }
%struct.TYPE_4__ = type { i32 (%struct.xpc_channel*)*, i32 (%struct.xpc_channel*)*, i32 (%struct.xpc_channel*, i64*)*, i64 (i64)* }
%struct.xpc_channel = type { i64, i32, i64, i32, i32, i32, i64, i64, i64, i64, i64, i32*, i32*, i32, i32, i32, i32 }

@xpc_partitions = common dso_local global %struct.xpc_partition* null, align 8
@XPC_C_WASCONNECTED = common dso_local global i32 0, align 4
@XPC_C_DISCONNECTING = common dso_local global i32 0, align 4
@XPC_C_CLOSEREQUEST = common dso_local global i32 0, align 4
@XPC_C_CONNECTEDCALLOUT_MADE = common dso_local global i32 0, align 4
@XPC_C_DISCONNECTINGCALLOUT_MADE = common dso_local global i32 0, align 4
@XPC_P_AS_DEACTIVATING = common dso_local global i64 0, align 8
@xpc_arch_ops = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@XPC_C_RCLOSEREQUEST = common dso_local global i32 0, align 4
@XPC_C_CLOSEREPLY = common dso_local global i32 0, align 4
@XPC_C_RCLOSEREPLY = common dso_local global i32 0, align 4
@xpDisconnected = common dso_local global i32 0, align 4
@XPC_C_DISCONNECTED = common dso_local global i32 0, align 4
@XPC_C_WDISCONNECT = common dso_local global i32 0, align 4
@xpc_chan = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"channel %d to partition %d disconnected, reason=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xpc_channel*, i64*)* @xpc_process_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xpc_process_disconnect(%struct.xpc_channel* %0, i64* %1) #0 {
  %3 = alloca %struct.xpc_channel*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.xpc_partition*, align 8
  %6 = alloca i32, align 4
  store %struct.xpc_channel* %0, %struct.xpc_channel** %3, align 8
  store i64* %1, i64** %4, align 8
  %7 = load %struct.xpc_partition*, %struct.xpc_partition** @xpc_partitions, align 8
  %8 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %9 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %7, i64 %10
  store %struct.xpc_partition* %11, %struct.xpc_partition** %5, align 8
  %12 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %13 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @XPC_C_WASCONNECTED, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %6, align 4
  %17 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %18 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %17, i32 0, i32 14
  %19 = call i32 @lockdep_assert_held(i32* %18)
  %20 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %21 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @XPC_C_DISCONNECTING, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %2
  br label %240

27:                                               ; preds = %2
  %28 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %29 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @XPC_C_CLOSEREQUEST, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i32 @DBUG_ON(i32 %35)
  %37 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %38 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %37, i32 0, i32 16
  %39 = call i64 @atomic_read(i32* %38)
  %40 = icmp sgt i64 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %27
  %42 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %43 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %42, i32 0, i32 15
  %44 = call i64 @atomic_read(i32* %43)
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41, %27
  br label %240

47:                                               ; preds = %41
  %48 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %49 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @XPC_C_CONNECTEDCALLOUT_MADE, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %47
  %55 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %56 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @XPC_C_DISCONNECTINGCALLOUT_MADE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  br label %62

62:                                               ; preds = %54, %47
  %63 = phi i1 [ false, %47 ], [ %61, %54 ]
  %64 = zext i1 %63 to i32
  %65 = call i32 @DBUG_ON(i32 %64)
  %66 = load %struct.xpc_partition*, %struct.xpc_partition** %5, align 8
  %67 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @XPC_P_AS_DEACTIVATING, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %80

71:                                               ; preds = %62
  %72 = load i64 (i64)*, i64 (i64)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @xpc_arch_ops, i32 0, i32 3), align 8
  %73 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %74 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i64 %72(i64 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  br label %240

79:                                               ; preds = %71
  br label %114

80:                                               ; preds = %62
  %81 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %82 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @XPC_C_RCLOSEREQUEST, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %80
  br label %240

88:                                               ; preds = %80
  %89 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %90 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @XPC_C_CLOSEREPLY, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %105, label %95

95:                                               ; preds = %88
  %96 = load i32, i32* @XPC_C_CLOSEREPLY, align 4
  %97 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %98 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 8
  %101 = load i32 (%struct.xpc_channel*, i64*)*, i32 (%struct.xpc_channel*, i64*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @xpc_arch_ops, i32 0, i32 2), align 8
  %102 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %103 = load i64*, i64** %4, align 8
  %104 = call i32 %101(%struct.xpc_channel* %102, i64* %103)
  br label %105

105:                                              ; preds = %95, %88
  %106 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %107 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @XPC_C_RCLOSEREPLY, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %105
  br label %240

113:                                              ; preds = %105
  br label %114

114:                                              ; preds = %113, %79
  %115 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %116 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %115, i32 0, i32 13
  %117 = call i64 @atomic_read(i32* %116)
  %118 = icmp sgt i64 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %114
  %120 = load i32 (%struct.xpc_channel*)*, i32 (%struct.xpc_channel*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @xpc_arch_ops, i32 0, i32 1), align 8
  %121 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %122 = call i32 %120(%struct.xpc_channel* %121)
  br label %123

123:                                              ; preds = %119, %114
  %124 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %125 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @XPC_C_DISCONNECTINGCALLOUT_MADE, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %144

130:                                              ; preds = %123
  %131 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %132 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %131, i32 0, i32 14
  %133 = load i64*, i64** %4, align 8
  %134 = load i64, i64* %133, align 8
  %135 = call i32 @spin_unlock_irqrestore(i32* %132, i64 %134)
  %136 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %137 = load i32, i32* @xpDisconnected, align 4
  %138 = call i32 @xpc_disconnect_callout(%struct.xpc_channel* %136, i32 %137)
  %139 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %140 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %139, i32 0, i32 14
  %141 = load i64*, i64** %4, align 8
  %142 = load i64, i64* %141, align 8
  %143 = call i32 @spin_lock_irqsave(i32* %140, i64 %142)
  br label %144

144:                                              ; preds = %130, %123
  %145 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %146 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %145, i32 0, i32 13
  %147 = call i64 @atomic_read(i32* %146)
  %148 = icmp ne i64 %147, 0
  %149 = zext i1 %148 to i32
  %150 = call i32 @DBUG_ON(i32 %149)
  %151 = load i32 (%struct.xpc_channel*)*, i32 (%struct.xpc_channel*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @xpc_arch_ops, i32 0, i32 0), align 8
  %152 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %153 = call i32 %151(%struct.xpc_channel* %152)
  %154 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %155 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %154, i32 0, i32 12
  store i32* null, i32** %155, align 8
  %156 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %157 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %156, i32 0, i32 11
  store i32* null, i32** %157, align 8
  %158 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %159 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %158, i32 0, i32 10
  store i64 0, i64* %159, align 8
  %160 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %161 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %160, i32 0, i32 9
  store i64 0, i64* %161, align 8
  %162 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %163 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %162, i32 0, i32 8
  store i64 0, i64* %163, align 8
  %164 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %165 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %164, i32 0, i32 7
  store i64 0, i64* %165, align 8
  %166 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %167 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %166, i32 0, i32 6
  store i64 0, i64* %167, align 8
  %168 = load i32, i32* @XPC_C_DISCONNECTED, align 4
  %169 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %170 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @XPC_C_WDISCONNECT, align 4
  %173 = and i32 %171, %172
  %174 = or i32 %168, %173
  %175 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %176 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %175, i32 0, i32 1
  store i32 %174, i32* %176, align 8
  %177 = load %struct.xpc_partition*, %struct.xpc_partition** %5, align 8
  %178 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %177, i32 0, i32 3
  %179 = call i32 @atomic_dec(i32* %178)
  %180 = load i32, i32* %6, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %194

182:                                              ; preds = %144
  %183 = load i32, i32* @xpc_chan, align 4
  %184 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %185 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %184, i32 0, i32 2
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %188 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %191 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %190, i32 0, i32 5
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @dev_info(i32 %183, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i64 %186, i64 %189, i32 %192)
  br label %194

194:                                              ; preds = %182, %144
  %195 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %196 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* @XPC_C_WDISCONNECT, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %205

201:                                              ; preds = %194
  %202 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %203 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %202, i32 0, i32 4
  %204 = call i32 @complete(i32* %203)
  br label %240

205:                                              ; preds = %194
  %206 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %207 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 8
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %239

210:                                              ; preds = %205
  %211 = load %struct.xpc_partition*, %struct.xpc_partition** %5, align 8
  %212 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @XPC_P_AS_DEACTIVATING, align 8
  %215 = icmp ne i64 %213, %214
  br i1 %215, label %216, label %236

216:                                              ; preds = %210
  %217 = load %struct.xpc_partition*, %struct.xpc_partition** %5, align 8
  %218 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %217, i32 0, i32 1
  %219 = call i32 @spin_lock(i32* %218)
  %220 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %221 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %220, i32 0, i32 3
  %222 = load i32, i32* %221, align 8
  %223 = load %struct.xpc_partition*, %struct.xpc_partition** %5, align 8
  %224 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %223, i32 0, i32 2
  %225 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %224, i32 0, i32 0
  %226 = load i32*, i32** %225, align 8
  %227 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %228 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %227, i32 0, i32 2
  %229 = load i64, i64* %228, align 8
  %230 = getelementptr inbounds i32, i32* %226, i64 %229
  %231 = load i32, i32* %230, align 4
  %232 = or i32 %231, %222
  store i32 %232, i32* %230, align 4
  %233 = load %struct.xpc_partition*, %struct.xpc_partition** %5, align 8
  %234 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %233, i32 0, i32 1
  %235 = call i32 @spin_unlock(i32* %234)
  br label %236

236:                                              ; preds = %216, %210
  %237 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %238 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %237, i32 0, i32 3
  store i32 0, i32* %238, align 8
  br label %239

239:                                              ; preds = %236, %205
  br label %240

240:                                              ; preds = %26, %46, %78, %87, %112, %239, %201
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @DBUG_ON(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @xpc_disconnect_callout(%struct.xpc_channel*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @dev_info(i32, i8*, i64, i64, i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
