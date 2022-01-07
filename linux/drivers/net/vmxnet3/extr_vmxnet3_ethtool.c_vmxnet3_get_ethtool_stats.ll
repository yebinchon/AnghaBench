; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/vmxnet3/extr_vmxnet3_ethtool.c_vmxnet3_get_ethtool_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/vmxnet3/extr_vmxnet3_ethtool.c_vmxnet3_get_ethtool_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.net_device = type { i32 }
%struct.ethtool_stats = type { i32 }
%struct.vmxnet3_adapter = type { i32, i32, %struct.TYPE_14__*, %struct.TYPE_13__*, %struct.TYPE_12__*, %struct.TYPE_11__*, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@VMXNET3_REG_CMD = common dso_local global i32 0, align 4
@VMXNET3_CMD_GET_STATS = common dso_local global i32 0, align 4
@vmxnet3_tq_dev_stats = common dso_local global %struct.TYPE_15__* null, align 8
@vmxnet3_tq_driver_stats = common dso_local global %struct.TYPE_15__* null, align 8
@vmxnet3_rq_dev_stats = common dso_local global %struct.TYPE_15__* null, align 8
@vmxnet3_rq_driver_stats = common dso_local global %struct.TYPE_15__* null, align 8
@vmxnet3_global_stats = common dso_local global %struct.TYPE_15__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_stats*, i8**)* @vmxnet3_get_ethtool_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmxnet3_get_ethtool_stats(%struct.net_device* %0, %struct.ethtool_stats* %1, i8** %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_stats*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca %struct.vmxnet3_adapter*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_stats* %1, %struct.ethtool_stats** %5, align 8
  store i8** %2, i8*** %6, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.vmxnet3_adapter* @netdev_priv(%struct.net_device* %12)
  store %struct.vmxnet3_adapter* %13, %struct.vmxnet3_adapter** %7, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %7, align 8
  %15 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %14, i32 0, i32 6
  %16 = load i64, i64* %8, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %7, align 8
  %19 = load i32, i32* @VMXNET3_REG_CMD, align 4
  %20 = load i32, i32* @VMXNET3_CMD_GET_STATS, align 4
  %21 = call i32 @VMXNET3_WRITE_BAR1_REG(%struct.vmxnet3_adapter* %18, i32 %19, i32 %20)
  %22 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %7, align 8
  %23 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %22, i32 0, i32 6
  %24 = load i64, i64* %8, align 8
  %25 = call i32 @spin_unlock_irqrestore(i32* %23, i64 %24)
  store i32 0, i32* %11, align 4
  br label %26

26:                                               ; preds = %98, %3
  %27 = load i32, i32* %11, align 4
  %28 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %7, align 8
  %29 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %101

32:                                               ; preds = %26
  %33 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %7, align 8
  %34 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %33, i32 0, i32 5
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  store i32* %39, i32** %9, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = inttoptr i64 %41 to i8*
  %43 = load i8**, i8*** %6, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i32 1
  store i8** %44, i8*** %6, align 8
  store i8* %42, i8** %43, align 8
  store i32 1, i32* %10, align 4
  br label %45

45:                                               ; preds = %64, %32
  %46 = load i32, i32* %10, align 4
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** @vmxnet3_tq_dev_stats, align 8
  %48 = call i32 @ARRAY_SIZE(%struct.TYPE_15__* %47)
  %49 = icmp slt i32 %46, %48
  br i1 %49, label %50, label %67

50:                                               ; preds = %45
  %51 = load i32*, i32** %9, align 8
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** @vmxnet3_tq_dev_stats, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %51, i64 %58
  %60 = bitcast i32* %59 to i8**
  %61 = load i8*, i8** %60, align 8
  %62 = load i8**, i8*** %6, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i32 1
  store i8** %63, i8*** %6, align 8
  store i8* %61, i8** %62, align 8
  br label %64

64:                                               ; preds = %50
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %10, align 4
  br label %45

67:                                               ; preds = %45
  %68 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %7, align 8
  %69 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %68, i32 0, i32 4
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %69, align 8
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  store i32* %74, i32** %9, align 8
  store i32 0, i32* %10, align 4
  br label %75

75:                                               ; preds = %94, %67
  %76 = load i32, i32* %10, align 4
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** @vmxnet3_tq_driver_stats, align 8
  %78 = call i32 @ARRAY_SIZE(%struct.TYPE_15__* %77)
  %79 = icmp slt i32 %76, %78
  br i1 %79, label %80, label %97

80:                                               ; preds = %75
  %81 = load i32*, i32** %9, align 8
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** @vmxnet3_tq_driver_stats, align 8
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %81, i64 %88
  %90 = bitcast i32* %89 to i8**
  %91 = load i8*, i8** %90, align 8
  %92 = load i8**, i8*** %6, align 8
  %93 = getelementptr inbounds i8*, i8** %92, i32 1
  store i8** %93, i8*** %6, align 8
  store i8* %91, i8** %92, align 8
  br label %94

94:                                               ; preds = %80
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %10, align 4
  br label %75

97:                                               ; preds = %75
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %11, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %11, align 4
  br label %26

101:                                              ; preds = %26
  store i32 0, i32* %11, align 4
  br label %102

102:                                              ; preds = %174, %101
  %103 = load i32, i32* %11, align 4
  %104 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %7, align 8
  %105 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = icmp slt i32 %103, %106
  br i1 %107, label %108, label %177

108:                                              ; preds = %102
  %109 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %7, align 8
  %110 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %109, i32 0, i32 3
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %110, align 8
  %112 = load i32, i32* %11, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 0
  store i32* %115, i32** %9, align 8
  %116 = load i32, i32* %11, align 4
  %117 = sext i32 %116 to i64
  %118 = inttoptr i64 %117 to i8*
  %119 = load i8**, i8*** %6, align 8
  %120 = getelementptr inbounds i8*, i8** %119, i32 1
  store i8** %120, i8*** %6, align 8
  store i8* %118, i8** %119, align 8
  store i32 1, i32* %10, align 4
  br label %121

121:                                              ; preds = %140, %108
  %122 = load i32, i32* %10, align 4
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** @vmxnet3_rq_dev_stats, align 8
  %124 = call i32 @ARRAY_SIZE(%struct.TYPE_15__* %123)
  %125 = icmp slt i32 %122, %124
  br i1 %125, label %126, label %143

126:                                              ; preds = %121
  %127 = load i32*, i32** %9, align 8
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** @vmxnet3_rq_dev_stats, align 8
  %129 = load i32, i32* %10, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %127, i64 %134
  %136 = bitcast i32* %135 to i8**
  %137 = load i8*, i8** %136, align 8
  %138 = load i8**, i8*** %6, align 8
  %139 = getelementptr inbounds i8*, i8** %138, i32 1
  store i8** %139, i8*** %6, align 8
  store i8* %137, i8** %138, align 8
  br label %140

140:                                              ; preds = %126
  %141 = load i32, i32* %10, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %10, align 4
  br label %121

143:                                              ; preds = %121
  %144 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %7, align 8
  %145 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %144, i32 0, i32 2
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %145, align 8
  %147 = load i32, i32* %11, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 0
  store i32* %150, i32** %9, align 8
  store i32 0, i32* %10, align 4
  br label %151

151:                                              ; preds = %170, %143
  %152 = load i32, i32* %10, align 4
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** @vmxnet3_rq_driver_stats, align 8
  %154 = call i32 @ARRAY_SIZE(%struct.TYPE_15__* %153)
  %155 = icmp slt i32 %152, %154
  br i1 %155, label %156, label %173

156:                                              ; preds = %151
  %157 = load i32*, i32** %9, align 8
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** @vmxnet3_rq_driver_stats, align 8
  %159 = load i32, i32* %10, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %157, i64 %164
  %166 = bitcast i32* %165 to i8**
  %167 = load i8*, i8** %166, align 8
  %168 = load i8**, i8*** %6, align 8
  %169 = getelementptr inbounds i8*, i8** %168, i32 1
  store i8** %169, i8*** %6, align 8
  store i8* %167, i8** %168, align 8
  br label %170

170:                                              ; preds = %156
  %171 = load i32, i32* %10, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %10, align 4
  br label %151

173:                                              ; preds = %151
  br label %174

174:                                              ; preds = %173
  %175 = load i32, i32* %11, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %11, align 4
  br label %102

177:                                              ; preds = %102
  %178 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %7, align 8
  %179 = bitcast %struct.vmxnet3_adapter* %178 to i32*
  store i32* %179, i32** %9, align 8
  store i32 0, i32* %10, align 4
  br label %180

180:                                              ; preds = %199, %177
  %181 = load i32, i32* %10, align 4
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** @vmxnet3_global_stats, align 8
  %183 = call i32 @ARRAY_SIZE(%struct.TYPE_15__* %182)
  %184 = icmp slt i32 %181, %183
  br i1 %184, label %185, label %202

185:                                              ; preds = %180
  %186 = load i32*, i32** %9, align 8
  %187 = load %struct.TYPE_15__*, %struct.TYPE_15__** @vmxnet3_global_stats, align 8
  %188 = load i32, i32* %10, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %186, i64 %193
  %195 = bitcast i32* %194 to i8**
  %196 = load i8*, i8** %195, align 8
  %197 = load i8**, i8*** %6, align 8
  %198 = getelementptr inbounds i8*, i8** %197, i32 1
  store i8** %198, i8*** %6, align 8
  store i8* %196, i8** %197, align 8
  br label %199

199:                                              ; preds = %185
  %200 = load i32, i32* %10, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %10, align 4
  br label %180

202:                                              ; preds = %180
  ret void
}

declare dso_local %struct.vmxnet3_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @VMXNET3_WRITE_BAR1_REG(%struct.vmxnet3_adapter*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
