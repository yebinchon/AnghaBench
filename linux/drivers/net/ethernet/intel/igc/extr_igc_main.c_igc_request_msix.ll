; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_main.c_igc_request_msix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_main.c_igc_request_msix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igc_adapter = type { i32, i8*, %struct.igc_adapter**, %struct.TYPE_10__*, %struct.TYPE_9__, %struct.TYPE_7__, i64, i64, %struct.net_device* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.net_device = type { i8* }
%struct.igc_q_vector = type { i32, i8*, %struct.igc_q_vector**, %struct.TYPE_10__*, %struct.TYPE_9__, %struct.TYPE_7__, i64, i64, %struct.net_device* }

@igc_msix_other = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%s-TxRx-%u\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%s-tx-%u\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%s-rx-%u\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"%s-unused\00", align 1
@igc_msix_ring = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.igc_adapter*)* @igc_request_msix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igc_request_msix(%struct.igc_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.igc_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.igc_q_vector*, align 8
  store %struct.igc_adapter* %0, %struct.igc_adapter** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load %struct.igc_adapter*, %struct.igc_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %10, i32 0, i32 8
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %8, align 8
  %13 = load %struct.igc_adapter*, %struct.igc_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %13, i32 0, i32 3
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.net_device*, %struct.net_device** %8, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = load %struct.igc_adapter*, %struct.igc_adapter** %3, align 8
  %25 = bitcast %struct.igc_adapter* %24 to %struct.igc_q_vector*
  %26 = call i32 @request_irq(i32 %20, i32* @igc_msix_other, i32 0, i8* %23, %struct.igc_q_vector* %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %1
  br label %199

30:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %150, %30
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.igc_adapter*, %struct.igc_adapter** %3, align 8
  %34 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %153

37:                                               ; preds = %31
  %38 = load %struct.igc_adapter*, %struct.igc_adapter** %3, align 8
  %39 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %38, i32 0, i32 2
  %40 = load %struct.igc_adapter**, %struct.igc_adapter*** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.igc_adapter*, %struct.igc_adapter** %40, i64 %42
  %44 = load %struct.igc_adapter*, %struct.igc_adapter** %43, align 8
  %45 = bitcast %struct.igc_adapter* %44 to %struct.igc_q_vector*
  store %struct.igc_q_vector* %45, %struct.igc_q_vector** %9, align 8
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %6, align 4
  %48 = load %struct.igc_adapter*, %struct.igc_adapter** %3, align 8
  %49 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %48, i32 0, i32 6
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i64 @IGC_EITR(i32 %51)
  %53 = add nsw i64 %50, %52
  %54 = load %struct.igc_q_vector*, %struct.igc_q_vector** %9, align 8
  %55 = getelementptr inbounds %struct.igc_q_vector, %struct.igc_q_vector* %54, i32 0, i32 7
  store i64 %53, i64* %55, align 8
  %56 = load %struct.igc_q_vector*, %struct.igc_q_vector** %9, align 8
  %57 = getelementptr inbounds %struct.igc_q_vector, %struct.igc_q_vector* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = icmp ne %struct.TYPE_8__* %59, null
  br i1 %60, label %61, label %81

61:                                               ; preds = %37
  %62 = load %struct.igc_q_vector*, %struct.igc_q_vector** %9, align 8
  %63 = getelementptr inbounds %struct.igc_q_vector, %struct.igc_q_vector* %62, i32 0, i32 5
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = icmp ne %struct.TYPE_6__* %65, null
  br i1 %66, label %67, label %81

67:                                               ; preds = %61
  %68 = load %struct.igc_q_vector*, %struct.igc_q_vector** %9, align 8
  %69 = getelementptr inbounds %struct.igc_q_vector, %struct.igc_q_vector* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = load %struct.net_device*, %struct.net_device** %8, align 8
  %72 = getelementptr inbounds %struct.net_device, %struct.net_device* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = load %struct.igc_q_vector*, %struct.igc_q_vector** %9, align 8
  %75 = getelementptr inbounds %struct.igc_q_vector, %struct.igc_q_vector* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %70, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %73, i32 %79)
  br label %131

81:                                               ; preds = %61, %37
  %82 = load %struct.igc_q_vector*, %struct.igc_q_vector** %9, align 8
  %83 = getelementptr inbounds %struct.igc_q_vector, %struct.igc_q_vector* %82, i32 0, i32 5
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = icmp ne %struct.TYPE_6__* %85, null
  br i1 %86, label %87, label %101

87:                                               ; preds = %81
  %88 = load %struct.igc_q_vector*, %struct.igc_q_vector** %9, align 8
  %89 = getelementptr inbounds %struct.igc_q_vector, %struct.igc_q_vector* %88, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  %91 = load %struct.net_device*, %struct.net_device** %8, align 8
  %92 = getelementptr inbounds %struct.net_device, %struct.net_device* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = load %struct.igc_q_vector*, %struct.igc_q_vector** %9, align 8
  %95 = getelementptr inbounds %struct.igc_q_vector, %struct.igc_q_vector* %94, i32 0, i32 5
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %90, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %93, i32 %99)
  br label %130

101:                                              ; preds = %81
  %102 = load %struct.igc_q_vector*, %struct.igc_q_vector** %9, align 8
  %103 = getelementptr inbounds %struct.igc_q_vector, %struct.igc_q_vector* %102, i32 0, i32 4
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %104, align 8
  %106 = icmp ne %struct.TYPE_8__* %105, null
  br i1 %106, label %107, label %121

107:                                              ; preds = %101
  %108 = load %struct.igc_q_vector*, %struct.igc_q_vector** %9, align 8
  %109 = getelementptr inbounds %struct.igc_q_vector, %struct.igc_q_vector* %108, i32 0, i32 1
  %110 = load i8*, i8** %109, align 8
  %111 = load %struct.net_device*, %struct.net_device** %8, align 8
  %112 = getelementptr inbounds %struct.net_device, %struct.net_device* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = load %struct.igc_q_vector*, %struct.igc_q_vector** %9, align 8
  %115 = getelementptr inbounds %struct.igc_q_vector, %struct.igc_q_vector* %114, i32 0, i32 4
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %110, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %113, i32 %119)
  br label %129

121:                                              ; preds = %101
  %122 = load %struct.igc_q_vector*, %struct.igc_q_vector** %9, align 8
  %123 = getelementptr inbounds %struct.igc_q_vector, %struct.igc_q_vector* %122, i32 0, i32 1
  %124 = load i8*, i8** %123, align 8
  %125 = load %struct.net_device*, %struct.net_device** %8, align 8
  %126 = getelementptr inbounds %struct.net_device, %struct.net_device* %125, i32 0, i32 0
  %127 = load i8*, i8** %126, align 8
  %128 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %124, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %127)
  br label %129

129:                                              ; preds = %121, %107
  br label %130

130:                                              ; preds = %129, %87
  br label %131

131:                                              ; preds = %130, %67
  %132 = load %struct.igc_adapter*, %struct.igc_adapter** %3, align 8
  %133 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %132, i32 0, i32 3
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %133, align 8
  %135 = load i32, i32* %6, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32*, i32** @igc_msix_ring, align 8
  %141 = load %struct.igc_q_vector*, %struct.igc_q_vector** %9, align 8
  %142 = getelementptr inbounds %struct.igc_q_vector, %struct.igc_q_vector* %141, i32 0, i32 1
  %143 = load i8*, i8** %142, align 8
  %144 = load %struct.igc_q_vector*, %struct.igc_q_vector** %9, align 8
  %145 = call i32 @request_irq(i32 %139, i32* %140, i32 0, i8* %143, %struct.igc_q_vector* %144)
  store i32 %145, i32* %5, align 4
  %146 = load i32, i32* %5, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %131
  br label %157

149:                                              ; preds = %131
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %4, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %4, align 4
  br label %31

153:                                              ; preds = %31
  %154 = load %struct.igc_adapter*, %struct.igc_adapter** %3, align 8
  %155 = bitcast %struct.igc_adapter* %154 to %struct.igc_q_vector*
  %156 = call i32 @igc_configure_msix(%struct.igc_q_vector* %155)
  store i32 0, i32* %2, align 4
  br label %201

157:                                              ; preds = %148
  %158 = load %struct.igc_adapter*, %struct.igc_adapter** %3, align 8
  %159 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %158, i32 0, i32 3
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %159, align 8
  %161 = load i32, i32* %7, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %7, align 4
  %163 = sext i32 %161 to i64
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.igc_adapter*, %struct.igc_adapter** %3, align 8
  %168 = bitcast %struct.igc_adapter* %167 to %struct.igc_q_vector*
  %169 = call i32 @free_irq(i32 %166, %struct.igc_q_vector* %168)
  %170 = load i32, i32* %6, align 4
  %171 = add nsw i32 %170, -1
  store i32 %171, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %172

172:                                              ; preds = %195, %157
  %173 = load i32, i32* %4, align 4
  %174 = load i32, i32* %6, align 4
  %175 = icmp slt i32 %173, %174
  br i1 %175, label %176, label %198

176:                                              ; preds = %172
  %177 = load %struct.igc_adapter*, %struct.igc_adapter** %3, align 8
  %178 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %177, i32 0, i32 3
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** %178, align 8
  %180 = load i32, i32* %7, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %7, align 4
  %182 = sext i32 %180 to i64
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.igc_adapter*, %struct.igc_adapter** %3, align 8
  %187 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %186, i32 0, i32 2
  %188 = load %struct.igc_adapter**, %struct.igc_adapter*** %187, align 8
  %189 = load i32, i32* %4, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.igc_adapter*, %struct.igc_adapter** %188, i64 %190
  %192 = load %struct.igc_adapter*, %struct.igc_adapter** %191, align 8
  %193 = bitcast %struct.igc_adapter* %192 to %struct.igc_q_vector*
  %194 = call i32 @free_irq(i32 %185, %struct.igc_q_vector* %193)
  br label %195

195:                                              ; preds = %176
  %196 = load i32, i32* %4, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %4, align 4
  br label %172

198:                                              ; preds = %172
  br label %199

199:                                              ; preds = %198, %29
  %200 = load i32, i32* %5, align 4
  store i32 %200, i32* %2, align 4
  br label %201

201:                                              ; preds = %199, %153
  %202 = load i32, i32* %2, align 4
  ret i32 %202
}

declare dso_local i32 @request_irq(i32, i32*, i32, i8*, %struct.igc_q_vector*) #1

declare dso_local i64 @IGC_EITR(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, ...) #1

declare dso_local i32 @igc_configure_msix(%struct.igc_q_vector*) #1

declare dso_local i32 @free_irq(i32, %struct.igc_q_vector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
