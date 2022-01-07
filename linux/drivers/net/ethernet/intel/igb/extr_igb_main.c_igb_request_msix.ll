; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_request_msix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_request_msix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { i32, i8*, %struct.igb_adapter**, %struct.TYPE_10__*, %struct.TYPE_9__, %struct.TYPE_7__, i64, i64, %struct.net_device* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.net_device = type { i8* }
%struct.igb_q_vector = type { i32, i8*, %struct.igb_q_vector**, %struct.TYPE_10__*, %struct.TYPE_9__, %struct.TYPE_7__, i64, i64, %struct.net_device* }

@igb_msix_other = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%s-TxRx-%u\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%s-tx-%u\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%s-rx-%u\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"%s-unused\00", align 1
@igb_msix_ring = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.igb_adapter*)* @igb_request_msix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igb_request_msix(%struct.igb_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.igb_adapter*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.igb_q_vector*, align 8
  store %struct.igb_adapter* %0, %struct.igb_adapter** %3, align 8
  %10 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %10, i32 0, i32 8
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %13 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %13, i32 0, i32 3
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @igb_msix_other, align 4
  %22 = load %struct.net_device*, %struct.net_device** %4, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %26 = bitcast %struct.igb_adapter* %25 to %struct.igb_q_vector*
  %27 = call i32 @request_irq(i32 %20, i32 %21, i32 0, i8* %24, %struct.igb_q_vector* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %1
  br label %200

31:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %151, %31
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %35 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %154

38:                                               ; preds = %32
  %39 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %40 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %39, i32 0, i32 2
  %41 = load %struct.igb_adapter**, %struct.igb_adapter*** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.igb_adapter*, %struct.igb_adapter** %41, i64 %43
  %45 = load %struct.igb_adapter*, %struct.igb_adapter** %44, align 8
  %46 = bitcast %struct.igb_adapter* %45 to %struct.igb_q_vector*
  store %struct.igb_q_vector* %46, %struct.igb_q_vector** %9, align 8
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  %49 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %50 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %49, i32 0, i32 6
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i64 @E1000_EITR(i32 %52)
  %54 = add nsw i64 %51, %53
  %55 = load %struct.igb_q_vector*, %struct.igb_q_vector** %9, align 8
  %56 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %55, i32 0, i32 7
  store i64 %54, i64* %56, align 8
  %57 = load %struct.igb_q_vector*, %struct.igb_q_vector** %9, align 8
  %58 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = icmp ne %struct.TYPE_8__* %60, null
  br i1 %61, label %62, label %82

62:                                               ; preds = %38
  %63 = load %struct.igb_q_vector*, %struct.igb_q_vector** %9, align 8
  %64 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %63, i32 0, i32 5
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = icmp ne %struct.TYPE_6__* %66, null
  br i1 %67, label %68, label %82

68:                                               ; preds = %62
  %69 = load %struct.igb_q_vector*, %struct.igb_q_vector** %9, align 8
  %70 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = load %struct.net_device*, %struct.net_device** %4, align 8
  %73 = getelementptr inbounds %struct.net_device, %struct.net_device* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = load %struct.igb_q_vector*, %struct.igb_q_vector** %9, align 8
  %76 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %75, i32 0, i32 4
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %71, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %74, i32 %80)
  br label %132

82:                                               ; preds = %62, %38
  %83 = load %struct.igb_q_vector*, %struct.igb_q_vector** %9, align 8
  %84 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %83, i32 0, i32 5
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = icmp ne %struct.TYPE_6__* %86, null
  br i1 %87, label %88, label %102

88:                                               ; preds = %82
  %89 = load %struct.igb_q_vector*, %struct.igb_q_vector** %9, align 8
  %90 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %89, i32 0, i32 1
  %91 = load i8*, i8** %90, align 8
  %92 = load %struct.net_device*, %struct.net_device** %4, align 8
  %93 = getelementptr inbounds %struct.net_device, %struct.net_device* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = load %struct.igb_q_vector*, %struct.igb_q_vector** %9, align 8
  %96 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %95, i32 0, i32 5
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %91, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %94, i32 %100)
  br label %131

102:                                              ; preds = %82
  %103 = load %struct.igb_q_vector*, %struct.igb_q_vector** %9, align 8
  %104 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %103, i32 0, i32 4
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %105, align 8
  %107 = icmp ne %struct.TYPE_8__* %106, null
  br i1 %107, label %108, label %122

108:                                              ; preds = %102
  %109 = load %struct.igb_q_vector*, %struct.igb_q_vector** %9, align 8
  %110 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %109, i32 0, i32 1
  %111 = load i8*, i8** %110, align 8
  %112 = load %struct.net_device*, %struct.net_device** %4, align 8
  %113 = getelementptr inbounds %struct.net_device, %struct.net_device* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = load %struct.igb_q_vector*, %struct.igb_q_vector** %9, align 8
  %116 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %115, i32 0, i32 4
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %111, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %114, i32 %120)
  br label %130

122:                                              ; preds = %102
  %123 = load %struct.igb_q_vector*, %struct.igb_q_vector** %9, align 8
  %124 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %123, i32 0, i32 1
  %125 = load i8*, i8** %124, align 8
  %126 = load %struct.net_device*, %struct.net_device** %4, align 8
  %127 = getelementptr inbounds %struct.net_device, %struct.net_device* %126, i32 0, i32 0
  %128 = load i8*, i8** %127, align 8
  %129 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %125, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %128)
  br label %130

130:                                              ; preds = %122, %108
  br label %131

131:                                              ; preds = %130, %88
  br label %132

132:                                              ; preds = %131, %68
  %133 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %134 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %133, i32 0, i32 3
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %134, align 8
  %136 = load i32, i32* %7, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @igb_msix_ring, align 4
  %142 = load %struct.igb_q_vector*, %struct.igb_q_vector** %9, align 8
  %143 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %142, i32 0, i32 1
  %144 = load i8*, i8** %143, align 8
  %145 = load %struct.igb_q_vector*, %struct.igb_q_vector** %9, align 8
  %146 = call i32 @request_irq(i32 %140, i32 %141, i32 0, i8* %144, %struct.igb_q_vector* %145)
  store i32 %146, i32* %6, align 4
  %147 = load i32, i32* %6, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %132
  br label %158

150:                                              ; preds = %132
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %5, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %5, align 4
  br label %32

154:                                              ; preds = %32
  %155 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %156 = bitcast %struct.igb_adapter* %155 to %struct.igb_q_vector*
  %157 = call i32 @igb_configure_msix(%struct.igb_q_vector* %156)
  store i32 0, i32* %2, align 4
  br label %202

158:                                              ; preds = %149
  %159 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %160 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %159, i32 0, i32 3
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %160, align 8
  %162 = load i32, i32* %8, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %8, align 4
  %164 = sext i32 %162 to i64
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %169 = bitcast %struct.igb_adapter* %168 to %struct.igb_q_vector*
  %170 = call i32 @free_irq(i32 %167, %struct.igb_q_vector* %169)
  %171 = load i32, i32* %7, align 4
  %172 = add nsw i32 %171, -1
  store i32 %172, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %173

173:                                              ; preds = %196, %158
  %174 = load i32, i32* %5, align 4
  %175 = load i32, i32* %7, align 4
  %176 = icmp slt i32 %174, %175
  br i1 %176, label %177, label %199

177:                                              ; preds = %173
  %178 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %179 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %178, i32 0, i32 3
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %179, align 8
  %181 = load i32, i32* %8, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %8, align 4
  %183 = sext i32 %181 to i64
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %188 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %187, i32 0, i32 2
  %189 = load %struct.igb_adapter**, %struct.igb_adapter*** %188, align 8
  %190 = load i32, i32* %5, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.igb_adapter*, %struct.igb_adapter** %189, i64 %191
  %193 = load %struct.igb_adapter*, %struct.igb_adapter** %192, align 8
  %194 = bitcast %struct.igb_adapter* %193 to %struct.igb_q_vector*
  %195 = call i32 @free_irq(i32 %186, %struct.igb_q_vector* %194)
  br label %196

196:                                              ; preds = %177
  %197 = load i32, i32* %5, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %5, align 4
  br label %173

199:                                              ; preds = %173
  br label %200

200:                                              ; preds = %199, %30
  %201 = load i32, i32* %6, align 4
  store i32 %201, i32* %2, align 4
  br label %202

202:                                              ; preds = %200, %154
  %203 = load i32, i32* %2, align 4
  ret i32 %203
}

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.igb_q_vector*) #1

declare dso_local i64 @E1000_EITR(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, ...) #1

declare dso_local i32 @igb_configure_msix(%struct.igb_q_vector*) #1

declare dso_local i32 @free_irq(i32, %struct.igb_q_vector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
