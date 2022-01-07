; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-core.c_ngene_command_mutex.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-core.c_ngene_command_mutex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ngene = type { i32, i32, i32, i64*, i32, i32, i32, i64*, i64*, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }
%struct.ngene_command = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@CMD_FWLOAD_PREPARE = common dso_local global i32 0, align 4
@NGENE_INT_COUNTS = common dso_local global i32 0, align 4
@NGENE_COMMAND = common dso_local global i32 0, align 4
@NGENE_COMMAND_HI = common dso_local global i32 0, align 4
@NGENE_STATUS = common dso_local global i32 0, align 4
@NGENE_STATUS_HI = common dso_local global i32 0, align 4
@NGENE_EVENT = common dso_local global i32 0, align 4
@NGENE_EVENT_HI = common dso_local global i32 0, align 4
@CMD_FWLOAD_FINISH = common dso_local global i32 0, align 4
@HOST_TO_NGENE = common dso_local global i32 0, align 4
@FORCE_INT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Command timeout cmd=%02x prev=%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ngene*, %struct.ngene_command*)* @ngene_command_mutex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngene_command_mutex(%struct.ngene* %0, %struct.ngene_command* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ngene*, align 8
  %5 = alloca %struct.ngene_command*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  store %struct.ngene* %0, %struct.ngene** %4, align 8
  store %struct.ngene_command* %1, %struct.ngene_command** %5, align 8
  %10 = load %struct.ngene*, %struct.ngene** %4, align 8
  %11 = getelementptr inbounds %struct.ngene, %struct.ngene* %10, i32 0, i32 10
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %6, align 8
  %14 = load %struct.ngene*, %struct.ngene** %4, align 8
  %15 = getelementptr inbounds %struct.ngene, %struct.ngene* %14, i32 0, i32 0
  store i32 0, i32* %15, align 8
  %16 = load %struct.ngene_command*, %struct.ngene_command** %5, align 8
  %17 = getelementptr inbounds %struct.ngene_command, %struct.ngene_command* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @CMD_FWLOAD_PREPARE, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %42

23:                                               ; preds = %2
  %24 = load %struct.ngene*, %struct.ngene** %4, align 8
  %25 = getelementptr inbounds %struct.ngene, %struct.ngene* %24, i32 0, i32 1
  store i32 1, i32* %25, align 4
  %26 = load i32, i32* @NGENE_INT_COUNTS, align 4
  %27 = call i32 @ngreadl(i32 %26)
  %28 = load %struct.ngene*, %struct.ngene** %4, align 8
  %29 = getelementptr inbounds %struct.ngene, %struct.ngene* %28, i32 0, i32 9
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* @NGENE_COMMAND, align 4
  %31 = call i32 @ngwritel(i32 0, i32 %30)
  %32 = load i32, i32* @NGENE_COMMAND_HI, align 4
  %33 = call i32 @ngwritel(i32 0, i32 %32)
  %34 = load i32, i32* @NGENE_STATUS, align 4
  %35 = call i32 @ngwritel(i32 0, i32 %34)
  %36 = load i32, i32* @NGENE_STATUS_HI, align 4
  %37 = call i32 @ngwritel(i32 0, i32 %36)
  %38 = load i32, i32* @NGENE_EVENT, align 4
  %39 = call i32 @ngwritel(i32 0, i32 %38)
  %40 = load i32, i32* @NGENE_EVENT_HI, align 4
  %41 = call i32 @ngwritel(i32 0, i32 %40)
  br label %80

42:                                               ; preds = %2
  %43 = load %struct.ngene_command*, %struct.ngene_command** %5, align 8
  %44 = getelementptr inbounds %struct.ngene_command, %struct.ngene_command* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @CMD_FWLOAD_FINISH, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %79

50:                                               ; preds = %42
  %51 = load %struct.ngene*, %struct.ngene** %4, align 8
  %52 = getelementptr inbounds %struct.ngene, %struct.ngene* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @NGENE_COMMAND, align 4
  %56 = call i32 @ngwritel(i32 %54, i32 %55)
  %57 = load i32, i32* %9, align 4
  %58 = ashr i32 %57, 32
  %59 = load i32, i32* @NGENE_COMMAND_HI, align 4
  %60 = call i32 @ngwritel(i32 %58, i32 %59)
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, 256
  %63 = load i32, i32* @NGENE_STATUS, align 4
  %64 = call i32 @ngwritel(i32 %62, i32 %63)
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, 256
  %67 = ashr i32 %66, 32
  %68 = load i32, i32* @NGENE_STATUS_HI, align 4
  %69 = call i32 @ngwritel(i32 %67, i32 %68)
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %70, 512
  %72 = load i32, i32* @NGENE_EVENT, align 4
  %73 = call i32 @ngwritel(i32 %71, i32 %72)
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 512
  %76 = ashr i32 %75, 32
  %77 = load i32, i32* @NGENE_EVENT_HI, align 4
  %78 = call i32 @ngwritel(i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %50, %42
  br label %80

80:                                               ; preds = %79, %23
  %81 = load %struct.ngene*, %struct.ngene** %4, align 8
  %82 = getelementptr inbounds %struct.ngene, %struct.ngene* %81, i32 0, i32 8
  %83 = load i64*, i64** %82, align 8
  %84 = load %struct.ngene_command*, %struct.ngene_command** %5, align 8
  %85 = getelementptr inbounds %struct.ngene_command, %struct.ngene_command* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i64*, i64** %86, align 8
  %88 = load %struct.ngene_command*, %struct.ngene_command** %5, align 8
  %89 = getelementptr inbounds %struct.ngene_command, %struct.ngene_command* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = add nsw i32 %90, 2
  %92 = call i32 @memcpy(i64* %83, i64* %87, i32 %91)
  %93 = load %struct.ngene*, %struct.ngene** %4, align 8
  %94 = getelementptr inbounds %struct.ngene, %struct.ngene* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %108

97:                                               ; preds = %80
  %98 = load i32, i32* @HOST_TO_NGENE, align 4
  %99 = load %struct.ngene_command*, %struct.ngene_command** %5, align 8
  %100 = getelementptr inbounds %struct.ngene_command, %struct.ngene_command* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i64*, i64** %101, align 8
  %103 = load %struct.ngene_command*, %struct.ngene_command** %5, align 8
  %104 = getelementptr inbounds %struct.ngene_command, %struct.ngene_command* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = add nsw i32 %105, 2
  %107 = call i32 @ngcpyto(i32 %98, i64* %102, i32 %106)
  br label %108

108:                                              ; preds = %97, %80
  %109 = load %struct.ngene*, %struct.ngene** %4, align 8
  %110 = getelementptr inbounds %struct.ngene, %struct.ngene* %109, i32 0, i32 6
  %111 = call i32 @spin_lock_irq(i32* %110)
  %112 = load %struct.ngene*, %struct.ngene** %4, align 8
  %113 = getelementptr inbounds %struct.ngene, %struct.ngene* %112, i32 0, i32 3
  %114 = load i64*, i64** %113, align 8
  %115 = load %struct.ngene_command*, %struct.ngene_command** %5, align 8
  %116 = getelementptr inbounds %struct.ngene_command, %struct.ngene_command* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i64, i64* %114, i64 %118
  store i64* %119, i64** %8, align 8
  %120 = load %struct.ngene_command*, %struct.ngene_command** %5, align 8
  %121 = getelementptr inbounds %struct.ngene_command, %struct.ngene_command* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %127, label %124

124:                                              ; preds = %108
  %125 = load i64*, i64** %8, align 8
  %126 = getelementptr inbounds i64, i64* %125, i32 1
  store i64* %126, i64** %8, align 8
  br label %127

127:                                              ; preds = %124, %108
  %128 = load i64*, i64** %8, align 8
  store i64 0, i64* %128, align 8
  %129 = load %struct.ngene*, %struct.ngene** %4, align 8
  %130 = getelementptr inbounds %struct.ngene, %struct.ngene* %129, i32 0, i32 3
  %131 = load i64*, i64** %130, align 8
  %132 = getelementptr inbounds i64, i64* %131, i64 0
  store i64 0, i64* %132, align 8
  %133 = load %struct.ngene*, %struct.ngene** %4, align 8
  %134 = getelementptr inbounds %struct.ngene, %struct.ngene* %133, i32 0, i32 3
  %135 = load i64*, i64** %134, align 8
  %136 = getelementptr inbounds i64, i64* %135, i64 1
  store i64 0, i64* %136, align 8
  %137 = load i64*, i64** %8, align 8
  %138 = load %struct.ngene*, %struct.ngene** %4, align 8
  %139 = getelementptr inbounds %struct.ngene, %struct.ngene* %138, i32 0, i32 7
  store i64* %137, i64** %139, align 8
  %140 = load %struct.ngene*, %struct.ngene** %4, align 8
  %141 = getelementptr inbounds %struct.ngene, %struct.ngene* %140, i32 0, i32 6
  %142 = call i32 @spin_unlock_irq(i32* %141)
  %143 = load i32, i32* @FORCE_INT, align 4
  %144 = call i32 @ngwritel(i32 1, i32 %143)
  %145 = load %struct.ngene*, %struct.ngene** %4, align 8
  %146 = getelementptr inbounds %struct.ngene, %struct.ngene* %145, i32 0, i32 5
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.ngene*, %struct.ngene** %4, align 8
  %149 = getelementptr inbounds %struct.ngene, %struct.ngene* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = icmp eq i32 %150, 1
  %152 = zext i1 %151 to i32
  %153 = load i32, i32* @HZ, align 4
  %154 = mul nsw i32 2, %153
  %155 = call i32 @wait_event_timeout(i32 %147, i32 %152, i32 %154)
  store i32 %155, i32* %7, align 4
  %156 = load i32, i32* %7, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %171, label %158

158:                                              ; preds = %127
  %159 = load %struct.device*, %struct.device** %6, align 8
  %160 = load %struct.ngene_command*, %struct.ngene_command** %5, align 8
  %161 = getelementptr inbounds %struct.ngene_command, %struct.ngene_command* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.ngene*, %struct.ngene** %4, align 8
  %166 = getelementptr inbounds %struct.ngene, %struct.ngene* %165, i32 0, i32 4
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @dev_err(%struct.device* %159, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %164, i32 %167)
  %169 = load %struct.ngene*, %struct.ngene** %4, align 8
  %170 = call i32 @dump_command_io(%struct.ngene* %169)
  store i32 -1, i32* %3, align 4
  br label %207

171:                                              ; preds = %127
  %172 = load %struct.ngene_command*, %struct.ngene_command** %5, align 8
  %173 = getelementptr inbounds %struct.ngene_command, %struct.ngene_command* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @CMD_FWLOAD_FINISH, align 4
  %178 = icmp eq i32 %176, %177
  br i1 %178, label %179, label %182

179:                                              ; preds = %171
  %180 = load %struct.ngene*, %struct.ngene** %4, align 8
  %181 = getelementptr inbounds %struct.ngene, %struct.ngene* %180, i32 0, i32 1
  store i32 0, i32* %181, align 4
  br label %182

182:                                              ; preds = %179, %171
  %183 = load %struct.ngene_command*, %struct.ngene_command** %5, align 8
  %184 = getelementptr inbounds %struct.ngene_command, %struct.ngene_command* %183, i32 0, i32 2
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.ngene*, %struct.ngene** %4, align 8
  %189 = getelementptr inbounds %struct.ngene, %struct.ngene* %188, i32 0, i32 4
  store i32 %187, i32* %189, align 8
  %190 = load %struct.ngene_command*, %struct.ngene_command** %5, align 8
  %191 = getelementptr inbounds %struct.ngene_command, %struct.ngene_command* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %195, label %194

194:                                              ; preds = %182
  store i32 0, i32* %3, align 4
  br label %207

195:                                              ; preds = %182
  %196 = load %struct.ngene_command*, %struct.ngene_command** %5, align 8
  %197 = getelementptr inbounds %struct.ngene_command, %struct.ngene_command* %196, i32 0, i32 2
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 0
  %199 = load i64*, i64** %198, align 8
  %200 = load %struct.ngene*, %struct.ngene** %4, align 8
  %201 = getelementptr inbounds %struct.ngene, %struct.ngene* %200, i32 0, i32 3
  %202 = load i64*, i64** %201, align 8
  %203 = load %struct.ngene_command*, %struct.ngene_command** %5, align 8
  %204 = getelementptr inbounds %struct.ngene_command, %struct.ngene_command* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @memcpy(i64* %199, i64* %202, i32 %205)
  store i32 0, i32* %3, align 4
  br label %207

207:                                              ; preds = %195, %194, %158
  %208 = load i32, i32* %3, align 4
  ret i32 %208
}

declare dso_local i32 @ngreadl(i32) #1

declare dso_local i32 @ngwritel(i32, i32) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i32 @ngcpyto(i32, i64*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @dump_command_io(%struct.ngene*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
