; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_thunderbolt.c_tbnet_check_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_thunderbolt.c_tbnet_check_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tbnet = type { %struct.TYPE_8__, %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.tbnet_frame = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.thunderbolt_ip_frame_header = type { i32, i32, i32, i32 }

@RING_DESC_CRC_ERROR = common dso_local global i32 0, align 4
@RING_DESC_BUFFER_OVERRUN = common dso_local global i32 0, align 4
@TBNET_MAX_MTU = common dso_local global i64 0, align 8
@TBNET_RING_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tbnet*, %struct.tbnet_frame*, %struct.thunderbolt_ip_frame_header*)* @tbnet_check_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tbnet_check_frame(%struct.tbnet* %0, %struct.tbnet_frame* %1, %struct.thunderbolt_ip_frame_header* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tbnet*, align 8
  %6 = alloca %struct.tbnet_frame*, align 8
  %7 = alloca %struct.thunderbolt_ip_frame_header*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.tbnet* %0, %struct.tbnet** %5, align 8
  store %struct.tbnet_frame* %1, %struct.tbnet_frame** %6, align 8
  store %struct.thunderbolt_ip_frame_header* %2, %struct.thunderbolt_ip_frame_header** %7, align 8
  %13 = load %struct.tbnet_frame*, %struct.tbnet_frame** %6, align 8
  %14 = getelementptr inbounds %struct.tbnet_frame, %struct.tbnet_frame* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @RING_DESC_CRC_ERROR, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %3
  %21 = load %struct.tbnet*, %struct.tbnet** %5, align 8
  %22 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 4
  store i32 0, i32* %4, align 4
  br label %172

26:                                               ; preds = %3
  %27 = load %struct.tbnet_frame*, %struct.tbnet_frame** %6, align 8
  %28 = getelementptr inbounds %struct.tbnet_frame, %struct.tbnet_frame* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @RING_DESC_BUFFER_OVERRUN, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %26
  %35 = load %struct.tbnet*, %struct.tbnet** %5, align 8
  %36 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 8
  store i32 0, i32* %4, align 4
  br label %172

40:                                               ; preds = %26
  br label %41

41:                                               ; preds = %40
  %42 = load %struct.tbnet_frame*, %struct.tbnet_frame** %6, align 8
  %43 = call i32 @tbnet_frame_size(%struct.tbnet_frame* %42)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = zext i32 %44 to i64
  %46 = icmp ule i64 %45, 16
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = load %struct.tbnet*, %struct.tbnet** %5, align 8
  %49 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 4
  store i32 0, i32* %4, align 4
  br label %172

53:                                               ; preds = %41
  %54 = load %struct.thunderbolt_ip_frame_header*, %struct.thunderbolt_ip_frame_header** %7, align 8
  %55 = getelementptr inbounds %struct.thunderbolt_ip_frame_header, %struct.thunderbolt_ip_frame_header* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @le32_to_cpu(i32 %56)
  store i32 %57, i32* %9, align 4
  %58 = load %struct.thunderbolt_ip_frame_header*, %struct.thunderbolt_ip_frame_header** %7, align 8
  %59 = getelementptr inbounds %struct.thunderbolt_ip_frame_header, %struct.thunderbolt_ip_frame_header* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @le32_to_cpu(i32 %60)
  store i32 %61, i32* %10, align 4
  %62 = load %struct.thunderbolt_ip_frame_header*, %struct.thunderbolt_ip_frame_header** %7, align 8
  %63 = getelementptr inbounds %struct.thunderbolt_ip_frame_header, %struct.thunderbolt_ip_frame_header* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @le16_to_cpu(i32 %64)
  store i32 %65, i32* %11, align 4
  %66 = load %struct.thunderbolt_ip_frame_header*, %struct.thunderbolt_ip_frame_header** %7, align 8
  %67 = getelementptr inbounds %struct.thunderbolt_ip_frame_header, %struct.thunderbolt_ip_frame_header* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @le16_to_cpu(i32 %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %10, align 4
  %71 = zext i32 %70 to i64
  %72 = load i32, i32* %12, align 4
  %73 = zext i32 %72 to i64
  %74 = sub i64 %73, 16
  %75 = icmp ugt i64 %71, %74
  br i1 %75, label %79, label %76

76:                                               ; preds = %53
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %76, %53
  %80 = load %struct.tbnet*, %struct.tbnet** %5, align 8
  %81 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 4
  store i32 0, i32* %4, align 4
  br label %172

85:                                               ; preds = %76
  %86 = load %struct.tbnet*, %struct.tbnet** %5, align 8
  %87 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %86, i32 0, i32 1
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = icmp ne %struct.TYPE_7__* %88, null
  br i1 %89, label %90, label %148

90:                                               ; preds = %85
  %91 = load %struct.tbnet*, %struct.tbnet** %5, align 8
  %92 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %148

96:                                               ; preds = %90
  %97 = load i32, i32* %9, align 4
  %98 = load %struct.tbnet*, %struct.tbnet** %5, align 8
  %99 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %97, %101
  br i1 %102, label %103, label %109

103:                                              ; preds = %96
  %104 = load %struct.tbnet*, %struct.tbnet** %5, align 8
  %105 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %106, align 4
  store i32 0, i32* %4, align 4
  br label %172

109:                                              ; preds = %96
  %110 = load i32, i32* %11, align 4
  %111 = load %struct.tbnet*, %struct.tbnet** %5, align 8
  %112 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = add i32 %114, 1
  %116 = icmp ne i32 %110, %115
  br i1 %116, label %124, label %117

117:                                              ; preds = %109
  %118 = load i32, i32* %8, align 4
  %119 = load %struct.tbnet*, %struct.tbnet** %5, align 8
  %120 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = icmp ne i32 %118, %122
  br i1 %123, label %124, label %130

124:                                              ; preds = %117, %109
  %125 = load %struct.tbnet*, %struct.tbnet** %5, align 8
  %126 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %127, align 8
  store i32 0, i32* %4, align 4
  br label %172

130:                                              ; preds = %117
  %131 = load %struct.tbnet*, %struct.tbnet** %5, align 8
  %132 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %131, i32 0, i32 1
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i32, i32* %10, align 4
  %137 = zext i32 %136 to i64
  %138 = add nsw i64 %135, %137
  %139 = load i64, i64* @TBNET_MAX_MTU, align 8
  %140 = icmp sgt i64 %138, %139
  br i1 %140, label %141, label %147

141:                                              ; preds = %130
  %142 = load %struct.tbnet*, %struct.tbnet** %5, align 8
  %143 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %144, align 4
  store i32 0, i32* %4, align 4
  br label %172

147:                                              ; preds = %130
  store i32 1, i32* %4, align 4
  br label %172

148:                                              ; preds = %90, %85
  %149 = load i32, i32* %9, align 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %156, label %151

151:                                              ; preds = %148
  %152 = load i32, i32* %9, align 4
  %153 = load i32, i32* @TBNET_RING_SIZE, align 4
  %154 = sdiv i32 %153, 4
  %155 = icmp ugt i32 %152, %154
  br i1 %155, label %156, label %162

156:                                              ; preds = %151, %148
  %157 = load %struct.tbnet*, %struct.tbnet** %5, align 8
  %158 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %159, align 4
  store i32 0, i32* %4, align 4
  br label %172

162:                                              ; preds = %151
  %163 = load i32, i32* %11, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %162
  %166 = load %struct.tbnet*, %struct.tbnet** %5, align 8
  %167 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %168, align 8
  store i32 0, i32* %4, align 4
  br label %172

171:                                              ; preds = %162
  store i32 1, i32* %4, align 4
  br label %172

172:                                              ; preds = %171, %165, %156, %147, %141, %124, %103, %79, %47, %34, %20
  %173 = load i32, i32* %4, align 4
  ret i32 %173
}

declare dso_local i32 @tbnet_frame_size(%struct.tbnet_frame*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
