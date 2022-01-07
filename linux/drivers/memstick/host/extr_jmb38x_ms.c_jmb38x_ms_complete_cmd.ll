; ModuleID = '/home/carl/AnghaBench/linux/drivers/memstick/host/extr_jmb38x_ms.c_jmb38x_ms_complete_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memstick/host/extr_jmb38x_ms.c_jmb38x_ms_complete_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memstick_host = type { i32 }
%struct.jmb38x_ms_host = type { i32, %struct.TYPE_6__*, i64, %struct.TYPE_5__*, i32 }
%struct.TYPE_6__ = type { i32, i64, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"c control %08x\0A\00", align 1
@HOST_CONTROL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"c status %08x\0A\00", align 1
@INT_STATUS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"c hstatus %08x\0A\00", align 1
@STATUS = common dso_local global i64 0, align 8
@BLOCK = common dso_local global i64 0, align 8
@DMA_CONTROL = common dso_local global i64 0, align 8
@DMA_DATA = common dso_local global i32 0, align 4
@READ = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@INT_STATUS_ENABLE = common dso_local global i64 0, align 8
@INT_STATUS_FIFO_RRDY = common dso_local global i32 0, align 4
@INT_STATUS_FIFO_WRDY = common dso_local global i32 0, align 4
@INT_SIGNAL_ENABLE = common dso_local global i64 0, align 8
@HOST_CONTROL_LED = common dso_local global i32 0, align 4
@ETIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.memstick_host*, i32)* @jmb38x_ms_complete_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jmb38x_ms_complete_cmd(%struct.memstick_host* %0, i32 %1) #0 {
  %3 = alloca %struct.memstick_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.jmb38x_ms_host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.memstick_host* %0, %struct.memstick_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.memstick_host*, %struct.memstick_host** %3, align 8
  %9 = call %struct.jmb38x_ms_host* @memstick_priv(%struct.memstick_host* %8)
  store %struct.jmb38x_ms_host* %9, %struct.jmb38x_ms_host** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %11 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %10, i32 0, i32 4
  %12 = call i32 @del_timer(i32* %11)
  %13 = load %struct.memstick_host*, %struct.memstick_host** %3, align 8
  %14 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %13, i32 0, i32 0
  %15 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %16 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @HOST_CONTROL, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @readl(i64 %19)
  %21 = call i32 @dev_dbg(i32* %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.memstick_host*, %struct.memstick_host** %3, align 8
  %23 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %22, i32 0, i32 0
  %24 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %25 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @INT_STATUS, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @readl(i64 %28)
  %30 = call i32 @dev_dbg(i32* %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load %struct.memstick_host*, %struct.memstick_host** %3, align 8
  %32 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %31, i32 0, i32 0
  %33 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %34 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @STATUS, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @readl(i64 %37)
  %39 = call i32 @dev_dbg(i32* %32, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  %40 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %41 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @STATUS, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @readl(i64 %44)
  %46 = and i32 %45, 255
  %47 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %48 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %47, i32 0, i32 1
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  store i32 %46, i32* %50, align 8
  %51 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %52 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @BLOCK, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @writel(i32 0, i64 %55)
  %57 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %58 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @DMA_CONTROL, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @writel(i32 0, i64 %61)
  %63 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %64 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @DMA_DATA, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %94

69:                                               ; preds = %2
  %70 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %71 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %70, i32 0, i32 3
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %77 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %76, i32 0, i32 1
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 3
  %80 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %81 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %80, i32 0, i32 1
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @READ, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %69
  %88 = load i32, i32* @DMA_FROM_DEVICE, align 4
  br label %91

89:                                               ; preds = %69
  %90 = load i32, i32* @DMA_TO_DEVICE, align 4
  br label %91

91:                                               ; preds = %89, %87
  %92 = phi i32 [ %88, %87 ], [ %90, %89 ]
  %93 = call i32 @dma_unmap_sg(i32* %75, i32* %79, i32 1, i32 %92)
  br label %133

94:                                               ; preds = %2
  %95 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %96 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @INT_STATUS_ENABLE, align 8
  %99 = add nsw i64 %97, %98
  %100 = call i32 @readl(i64 %99)
  store i32 %100, i32* %6, align 4
  %101 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %102 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %101, i32 0, i32 1
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @READ, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %113

108:                                              ; preds = %94
  %109 = load i32, i32* @INT_STATUS_FIFO_RRDY, align 4
  %110 = xor i32 %109, -1
  %111 = load i32, i32* %6, align 4
  %112 = and i32 %111, %110
  store i32 %112, i32* %6, align 4
  br label %118

113:                                              ; preds = %94
  %114 = load i32, i32* @INT_STATUS_FIFO_WRDY, align 4
  %115 = xor i32 %114, -1
  %116 = load i32, i32* %6, align 4
  %117 = and i32 %116, %115
  store i32 %117, i32* %6, align 4
  br label %118

118:                                              ; preds = %113, %108
  %119 = load i32, i32* %6, align 4
  %120 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %121 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @INT_STATUS_ENABLE, align 8
  %124 = add nsw i64 %122, %123
  %125 = call i32 @writel(i32 %119, i64 %124)
  %126 = load i32, i32* %6, align 4
  %127 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %128 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @INT_SIGNAL_ENABLE, align 8
  %131 = add nsw i64 %129, %130
  %132 = call i32 @writel(i32 %126, i64 %131)
  br label %133

133:                                              ; preds = %118, %91
  %134 = load i32, i32* @HOST_CONTROL_LED, align 4
  %135 = xor i32 %134, -1
  %136 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %137 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @HOST_CONTROL, align 8
  %140 = add nsw i64 %138, %139
  %141 = call i32 @readl(i64 %140)
  %142 = and i32 %135, %141
  %143 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %144 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @HOST_CONTROL, align 8
  %147 = add nsw i64 %145, %146
  %148 = call i32 @writel(i32 %142, i64 %147)
  %149 = load i32, i32* %4, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %167, label %151

151:                                              ; preds = %133
  br label %152

152:                                              ; preds = %164, %151
  %153 = load %struct.memstick_host*, %struct.memstick_host** %3, align 8
  %154 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %155 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %154, i32 0, i32 1
  %156 = call i32 @memstick_next_req(%struct.memstick_host* %153, %struct.TYPE_6__** %155)
  store i32 %156, i32* %7, align 4
  br label %157

157:                                              ; preds = %152
  %158 = load i32, i32* %7, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %164, label %160

160:                                              ; preds = %157
  %161 = load %struct.memstick_host*, %struct.memstick_host** %3, align 8
  %162 = call i64 @jmb38x_ms_issue_cmd(%struct.memstick_host* %161)
  %163 = icmp ne i64 %162, 0
  br label %164

164:                                              ; preds = %160, %157
  %165 = phi i1 [ false, %157 ], [ %163, %160 ]
  br i1 %165, label %152, label %166

166:                                              ; preds = %164
  br label %188

167:                                              ; preds = %133
  br label %168

168:                                              ; preds = %183, %167
  %169 = load %struct.memstick_host*, %struct.memstick_host** %3, align 8
  %170 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %171 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %170, i32 0, i32 1
  %172 = call i32 @memstick_next_req(%struct.memstick_host* %169, %struct.TYPE_6__** %171)
  store i32 %172, i32* %7, align 4
  %173 = load i32, i32* %7, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %182, label %175

175:                                              ; preds = %168
  %176 = load i32, i32* @ETIME, align 4
  %177 = sub nsw i32 0, %176
  %178 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %179 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %178, i32 0, i32 1
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 2
  store i32 %177, i32* %181, align 8
  br label %182

182:                                              ; preds = %175, %168
  br label %183

183:                                              ; preds = %182
  %184 = load i32, i32* %7, align 4
  %185 = icmp ne i32 %184, 0
  %186 = xor i1 %185, true
  br i1 %186, label %168, label %187

187:                                              ; preds = %183
  br label %188

188:                                              ; preds = %187, %166
  ret void
}

declare dso_local %struct.jmb38x_ms_host* @memstick_priv(%struct.memstick_host*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @dma_unmap_sg(i32*, i32*, i32, i32) #1

declare dso_local i32 @memstick_next_req(%struct.memstick_host*, %struct.TYPE_6__**) #1

declare dso_local i64 @jmb38x_ms_issue_cmd(%struct.memstick_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
