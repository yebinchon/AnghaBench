; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_main.c_cxgb4_create_server_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_main.c_cxgb4_create_server_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.filter_entry = type { i32, i64, %struct.TYPE_12__, i64 }
%struct.TYPE_12__ = type { i32, i32, i32, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i8, i32, i32*, i32 }
%struct.TYPE_9__ = type { i32*, i8, i32, i32 }
%struct.adapter = type { %struct.TYPE_11__, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { i64, %struct.filter_entry*, i64, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@PORT_F = common dso_local global i32 0, align 4
@PROTOCOL_F = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxgb4_create_server_filter(%struct.net_device* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i8 zeroext %6, i8 zeroext %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca i32, align 4
  %19 = alloca %struct.filter_entry*, align 8
  %20 = alloca %struct.adapter*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  store %struct.net_device* %0, %struct.net_device** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i8 %6, i8* %16, align 1
  store i8 %7, i8* %17, align 1
  %23 = load %struct.net_device*, %struct.net_device** %10, align 8
  %24 = call %struct.adapter* @netdev2adap(%struct.net_device* %23)
  store %struct.adapter* %24, %struct.adapter** %20, align 8
  %25 = load %struct.adapter*, %struct.adapter** %20, align 8
  %26 = getelementptr inbounds %struct.adapter, %struct.adapter* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* %11, align 4
  %30 = zext i32 %29 to i64
  %31 = sub nsw i64 %30, %28
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %11, align 4
  %33 = load %struct.adapter*, %struct.adapter** %20, align 8
  %34 = getelementptr inbounds %struct.adapter, %struct.adapter* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* %11, align 4
  %38 = zext i32 %37 to i64
  %39 = add nsw i64 %38, %36
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %11, align 4
  %41 = load %struct.adapter*, %struct.adapter** %20, align 8
  %42 = getelementptr inbounds %struct.adapter, %struct.adapter* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 1
  %44 = load %struct.filter_entry*, %struct.filter_entry** %43, align 8
  %45 = load i32, i32* %11, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %44, i64 %46
  store %struct.filter_entry* %47, %struct.filter_entry** %19, align 8
  %48 = load %struct.filter_entry*, %struct.filter_entry** %19, align 8
  %49 = call i32 @writable_filter(%struct.filter_entry* %48)
  store i32 %49, i32* %18, align 4
  %50 = load i32, i32* %18, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %8
  %53 = load i32, i32* %18, align 4
  store i32 %53, i32* %9, align 4
  br label %195

54:                                               ; preds = %8
  %55 = load %struct.filter_entry*, %struct.filter_entry** %19, align 8
  %56 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load %struct.adapter*, %struct.adapter** %20, align 8
  %61 = load %struct.filter_entry*, %struct.filter_entry** %19, align 8
  %62 = call i32 @clear_filter(%struct.adapter* %60, %struct.filter_entry* %61)
  br label %63

63:                                               ; preds = %59, %54
  %64 = load %struct.filter_entry*, %struct.filter_entry** %19, align 8
  %65 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %64, i32 0, i32 2
  %66 = call i32 @memset(%struct.TYPE_12__* %65, i32 0, i32 4)
  %67 = load i32, i32* %13, align 4
  %68 = call i32 @cpu_to_be16(i32 %67)
  %69 = load %struct.filter_entry*, %struct.filter_entry** %19, align 8
  %70 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 4
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 3
  store i32 %68, i32* %72, align 8
  %73 = load %struct.filter_entry*, %struct.filter_entry** %19, align 8
  %74 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 3
  store i32 -1, i32* %76, align 8
  store i32* %12, i32** %22, align 8
  %77 = load i32*, i32** %22, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32*, i32** %22, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %79, %82
  %84 = load i32*, i32** %22, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 2
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %83, %86
  %88 = load i32*, i32** %22, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 3
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %87, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %143

93:                                               ; preds = %63
  store i32 0, i32* %21, align 4
  br label %94

94:                                               ; preds = %119, %93
  %95 = load i32, i32* %21, align 4
  %96 = icmp slt i32 %95, 4
  br i1 %96, label %97, label %122

97:                                               ; preds = %94
  %98 = load i32*, i32** %22, align 8
  %99 = load i32, i32* %21, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.filter_entry*, %struct.filter_entry** %19, align 8
  %104 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 4
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %21, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  store i32 %102, i32* %110, align 4
  %111 = load %struct.filter_entry*, %struct.filter_entry** %19, align 8
  %112 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 2
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %21, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  store i32 -1, i32* %118, align 4
  br label %119

119:                                              ; preds = %97
  %120 = load i32, i32* %21, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %21, align 4
  br label %94

122:                                              ; preds = %94
  %123 = load %struct.adapter*, %struct.adapter** %20, align 8
  %124 = getelementptr inbounds %struct.adapter, %struct.adapter* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @PORT_F, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %142

131:                                              ; preds = %122
  %132 = load i8, i8* %16, align 1
  %133 = load %struct.filter_entry*, %struct.filter_entry** %19, align 8
  %134 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 4
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 1
  store i8 %132, i8* %136, align 8
  %137 = load i8, i8* %17, align 1
  %138 = load %struct.filter_entry*, %struct.filter_entry** %19, align 8
  %139 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  store i8 %137, i8* %141, align 8
  br label %142

142:                                              ; preds = %131, %122
  br label %143

143:                                              ; preds = %142, %63
  %144 = load %struct.adapter*, %struct.adapter** %20, align 8
  %145 = getelementptr inbounds %struct.adapter, %struct.adapter* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @PROTOCOL_F, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %162

152:                                              ; preds = %143
  %153 = load i32, i32* @IPPROTO_TCP, align 4
  %154 = load %struct.filter_entry*, %struct.filter_entry** %19, align 8
  %155 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 4
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 2
  store i32 %153, i32* %157, align 4
  %158 = load %struct.filter_entry*, %struct.filter_entry** %19, align 8
  %159 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 3
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 1
  store i32 -1, i32* %161, align 4
  br label %162

162:                                              ; preds = %152, %143
  %163 = load %struct.filter_entry*, %struct.filter_entry** %19, align 8
  %164 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 0
  store i32 1, i32* %165, align 8
  %166 = load i32, i32* %15, align 4
  %167 = load %struct.filter_entry*, %struct.filter_entry** %19, align 8
  %168 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 1
  store i32 %166, i32* %169, align 4
  %170 = load %struct.filter_entry*, %struct.filter_entry** %19, align 8
  %171 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %170, i32 0, i32 0
  store i32 1, i32* %171, align 8
  %172 = load %struct.filter_entry*, %struct.filter_entry** %19, align 8
  %173 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 2
  store i32 1, i32* %174, align 8
  %175 = load i32, i32* %11, align 4
  %176 = zext i32 %175 to i64
  %177 = load %struct.adapter*, %struct.adapter** %20, align 8
  %178 = getelementptr inbounds %struct.adapter, %struct.adapter* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = add nsw i64 %176, %180
  %182 = load %struct.filter_entry*, %struct.filter_entry** %19, align 8
  %183 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %182, i32 0, i32 1
  store i64 %181, i64* %183, align 8
  %184 = load %struct.adapter*, %struct.adapter** %20, align 8
  %185 = load i32, i32* %11, align 4
  %186 = call i32 @set_filter_wr(%struct.adapter* %184, i32 %185)
  store i32 %186, i32* %18, align 4
  %187 = load i32, i32* %18, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %194

189:                                              ; preds = %162
  %190 = load %struct.adapter*, %struct.adapter** %20, align 8
  %191 = load %struct.filter_entry*, %struct.filter_entry** %19, align 8
  %192 = call i32 @clear_filter(%struct.adapter* %190, %struct.filter_entry* %191)
  %193 = load i32, i32* %18, align 4
  store i32 %193, i32* %9, align 4
  br label %195

194:                                              ; preds = %162
  store i32 0, i32* %9, align 4
  br label %195

195:                                              ; preds = %194, %189, %52
  %196 = load i32, i32* %9, align 4
  ret i32 %196
}

declare dso_local %struct.adapter* @netdev2adap(%struct.net_device*) #1

declare dso_local i32 @writable_filter(%struct.filter_entry*) #1

declare dso_local i32 @clear_filter(%struct.adapter*, %struct.filter_entry*) #1

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @set_filter_wr(%struct.adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
