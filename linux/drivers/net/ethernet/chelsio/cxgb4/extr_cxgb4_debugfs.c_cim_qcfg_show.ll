; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_debugfs.c_cim_qcfg_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_debugfs.c_cim_qcfg_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.adapter* }
%struct.adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@cim_qcfg_show.qname = internal constant [14 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [4 x i8] c"TP0\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"TP1\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ULP\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"SGE0\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"SGE1\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"NC-SI\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"ULP0\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"ULP1\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"ULP2\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"ULP3\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"SGE\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"SGE0-RX\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"SGE1-RX\00", align 1
@CIM_NUM_IBQ = common dso_local global i32 0, align 4
@CIM_NUM_OBQ_T5 = common dso_local global i32 0, align 4
@CIM_NUM_OBQ = common dso_local global i32 0, align 4
@UP_IBQ_0_RDADDR_A = common dso_local global i32 0, align 4
@UP_IBQ_0_SHADOW_RDADDR_A = common dso_local global i32 0, align 4
@UP_OBQ_0_REALADDR_A = common dso_local global i32 0, align 4
@UP_OBQ_0_SHADOW_REALADDR_A = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [56 x i8] c"  Queue  Base  Size Thres  RdPtr WrPtr  SOP  EOP Avail\0A\00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c"%7s %5x %5u %5u %6x  %4x %4u %4u %5u\0A\00", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"%7s %5x %5u %12x  %4x %4u %4u %5u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @cim_qcfg_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cim_qcfg_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.adapter*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %19 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %20 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %19, i32 0, i32 0
  %21 = load %struct.adapter*, %struct.adapter** %20, align 8
  store %struct.adapter* %21, %struct.adapter** %7, align 8
  %22 = load i32, i32* @CIM_NUM_IBQ, align 4
  %23 = load i32, i32* @CIM_NUM_OBQ_T5, align 4
  %24 = add nsw i32 %22, %23
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %8, align 8
  %27 = alloca i64, i64 %25, align 16
  store i64 %25, i64* %9, align 8
  %28 = load i32, i32* @CIM_NUM_IBQ, align 4
  %29 = load i32, i32* @CIM_NUM_OBQ_T5, align 4
  %30 = add nsw i32 %28, %29
  %31 = zext i32 %30 to i64
  %32 = alloca i64, i64 %31, align 16
  store i64 %31, i64* %10, align 8
  %33 = load i32, i32* @CIM_NUM_IBQ, align 4
  %34 = load i32, i32* @CIM_NUM_OBQ_T5, align 4
  %35 = add nsw i32 %33, %34
  %36 = mul nsw i32 4, %35
  %37 = zext i32 %36 to i64
  %38 = alloca i64, i64 %37, align 16
  store i64 %37, i64* %11, align 8
  %39 = load i32, i32* @CIM_NUM_IBQ, align 4
  %40 = zext i32 %39 to i64
  %41 = alloca i64, i64 %40, align 16
  store i64 %40, i64* %12, align 8
  %42 = load i32, i32* @CIM_NUM_OBQ, align 4
  %43 = mul nsw i32 2, %42
  %44 = zext i32 %43 to i64
  %45 = alloca i64, i64 %44, align 16
  store i64 %44, i64* %13, align 8
  %46 = load i32, i32* @CIM_NUM_OBQ_T5, align 4
  %47 = mul nsw i32 2, %46
  %48 = zext i32 %47 to i64
  %49 = alloca i64, i64 %48, align 16
  store i64 %48, i64* %15, align 8
  store i64* %38, i64** %16, align 8
  %50 = load %struct.adapter*, %struct.adapter** %7, align 8
  %51 = getelementptr inbounds %struct.adapter, %struct.adapter* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @is_t4(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %2
  %57 = load i32, i32* @CIM_NUM_OBQ, align 4
  br label %60

58:                                               ; preds = %2
  %59 = load i32, i32* @CIM_NUM_OBQ_T5, align 4
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i32 [ %57, %56 ], [ %59, %58 ]
  store i32 %61, i32* %17, align 4
  %62 = load %struct.adapter*, %struct.adapter** %7, align 8
  %63 = load %struct.adapter*, %struct.adapter** %7, align 8
  %64 = getelementptr inbounds %struct.adapter, %struct.adapter* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @is_t4(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %60
  %70 = load i32, i32* @UP_IBQ_0_RDADDR_A, align 4
  br label %73

71:                                               ; preds = %60
  %72 = load i32, i32* @UP_IBQ_0_SHADOW_RDADDR_A, align 4
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi i32 [ %70, %69 ], [ %72, %71 ]
  %75 = call i32 @ARRAY_SIZE(i64* %38)
  %76 = call i32 @t4_cim_read(%struct.adapter* %62, i32 %74, i32 %75, i64* %38)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %97, label %79

79:                                               ; preds = %73
  %80 = load %struct.adapter*, %struct.adapter** %7, align 8
  %81 = getelementptr inbounds %struct.adapter, %struct.adapter* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @is_t4(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %79
  %87 = load %struct.adapter*, %struct.adapter** %7, align 8
  %88 = load i32, i32* @UP_OBQ_0_REALADDR_A, align 4
  %89 = call i32 @ARRAY_SIZE(i64* %45)
  %90 = call i32 @t4_cim_read(%struct.adapter* %87, i32 %88, i32 %89, i64* %45)
  store i32 %90, i32* %6, align 4
  store i64* %45, i64** %14, align 8
  br label %96

91:                                               ; preds = %79
  %92 = load %struct.adapter*, %struct.adapter** %7, align 8
  %93 = load i32, i32* @UP_OBQ_0_SHADOW_REALADDR_A, align 4
  %94 = call i32 @ARRAY_SIZE(i64* %49)
  %95 = call i32 @t4_cim_read(%struct.adapter* %92, i32 %93, i32 %94, i64* %49)
  store i32 %95, i32* %6, align 4
  store i64* %49, i64** %14, align 8
  br label %96

96:                                               ; preds = %91, %86
  br label %97

97:                                               ; preds = %96, %73
  %98 = load i32, i32* %6, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  %101 = load i32, i32* %6, align 4
  store i32 %101, i32* %3, align 4
  store i32 1, i32* %18, align 4
  br label %212

102:                                              ; preds = %97
  %103 = load %struct.adapter*, %struct.adapter** %7, align 8
  %104 = call i32 @t4_read_cimq_cfg(%struct.adapter* %103, i64* %27, i64* %32, i64* %41)
  %105 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %106 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %105, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.13, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %107

107:                                              ; preds = %151, %102
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* @CIM_NUM_IBQ, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %156

111:                                              ; preds = %107
  %112 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %113 = load i32, i32* %6, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [14 x i8*], [14 x i8*]* @cim_qcfg_show.qname, i64 0, i64 %114
  %116 = load i8*, i8** %115, align 8
  %117 = load i32, i32* %6, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i64, i64* %27, i64 %118
  %120 = load i64, i64* %119, align 8
  %121 = load i32, i32* %6, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i64, i64* %32, i64 %122
  %124 = load i64, i64* %123, align 8
  %125 = load i32, i32* %6, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i64, i64* %41, i64 %126
  %128 = load i64, i64* %127, align 8
  %129 = load i64*, i64** %16, align 8
  %130 = getelementptr inbounds i64, i64* %129, i64 0
  %131 = load i64, i64* %130, align 8
  %132 = call i32 @IBQRDADDR_G(i64 %131)
  %133 = load i64*, i64** %16, align 8
  %134 = getelementptr inbounds i64, i64* %133, i64 1
  %135 = load i64, i64* %134, align 8
  %136 = call i32 @IBQWRADDR_G(i64 %135)
  %137 = load i64*, i64** %16, align 8
  %138 = getelementptr inbounds i64, i64* %137, i64 3
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @QUESOPCNT_G(i64 %139)
  %141 = load i64*, i64** %16, align 8
  %142 = getelementptr inbounds i64, i64* %141, i64 3
  %143 = load i64, i64* %142, align 8
  %144 = call i32 @QUEEOPCNT_G(i64 %143)
  %145 = load i64*, i64** %16, align 8
  %146 = getelementptr inbounds i64, i64* %145, i64 2
  %147 = load i64, i64* %146, align 8
  %148 = call i32 @QUEREMFLITS_G(i64 %147)
  %149 = mul nsw i32 %148, 16
  %150 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %112, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.14, i64 0, i64 0), i8* %116, i64 %120, i64 %124, i64 %128, i32 %132, i32 %136, i32 %140, i32 %144, i32 %149)
  br label %151

151:                                              ; preds = %111
  %152 = load i32, i32* %6, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %6, align 4
  %154 = load i64*, i64** %16, align 8
  %155 = getelementptr inbounds i64, i64* %154, i64 4
  store i64* %155, i64** %16, align 8
  br label %107

156:                                              ; preds = %107
  br label %157

157:                                              ; preds = %204, %156
  %158 = load i32, i32* %6, align 4
  %159 = load i32, i32* @CIM_NUM_IBQ, align 4
  %160 = load i32, i32* %17, align 4
  %161 = add nsw i32 %159, %160
  %162 = icmp slt i32 %158, %161
  br i1 %162, label %163, label %211

163:                                              ; preds = %157
  %164 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %165 = load i32, i32* %6, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [14 x i8*], [14 x i8*]* @cim_qcfg_show.qname, i64 0, i64 %166
  %168 = load i8*, i8** %167, align 8
  %169 = load i32, i32* %6, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i64, i64* %27, i64 %170
  %172 = load i64, i64* %171, align 8
  %173 = load i32, i32* %6, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i64, i64* %32, i64 %174
  %176 = load i64, i64* %175, align 8
  %177 = load i64*, i64** %16, align 8
  %178 = getelementptr inbounds i64, i64* %177, i64 0
  %179 = load i64, i64* %178, align 8
  %180 = call i32 @QUERDADDR_G(i64 %179)
  %181 = and i32 %180, 16383
  %182 = load i64*, i64** %14, align 8
  %183 = getelementptr inbounds i64, i64* %182, i64 0
  %184 = load i64, i64* %183, align 8
  %185 = load i32, i32* %6, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i64, i64* %27, i64 %186
  %188 = load i64, i64* %187, align 8
  %189 = sub nsw i64 %184, %188
  %190 = load i64*, i64** %16, align 8
  %191 = getelementptr inbounds i64, i64* %190, i64 3
  %192 = load i64, i64* %191, align 8
  %193 = call i32 @QUESOPCNT_G(i64 %192)
  %194 = load i64*, i64** %16, align 8
  %195 = getelementptr inbounds i64, i64* %194, i64 3
  %196 = load i64, i64* %195, align 8
  %197 = call i32 @QUEEOPCNT_G(i64 %196)
  %198 = load i64*, i64** %16, align 8
  %199 = getelementptr inbounds i64, i64* %198, i64 2
  %200 = load i64, i64* %199, align 8
  %201 = call i32 @QUEREMFLITS_G(i64 %200)
  %202 = mul nsw i32 %201, 16
  %203 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %164, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.15, i64 0, i64 0), i8* %168, i64 %172, i64 %176, i32 %181, i64 %189, i32 %193, i32 %197, i32 %202)
  br label %204

204:                                              ; preds = %163
  %205 = load i32, i32* %6, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %6, align 4
  %207 = load i64*, i64** %16, align 8
  %208 = getelementptr inbounds i64, i64* %207, i64 4
  store i64* %208, i64** %16, align 8
  %209 = load i64*, i64** %14, align 8
  %210 = getelementptr inbounds i64, i64* %209, i64 2
  store i64* %210, i64** %14, align 8
  br label %157

211:                                              ; preds = %157
  store i32 0, i32* %3, align 4
  store i32 1, i32* %18, align 4
  br label %212

212:                                              ; preds = %211, %100
  %213 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %213)
  %214 = load i32, i32* %3, align 4
  ret i32 %214
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @is_t4(i32) #2

declare dso_local i32 @t4_cim_read(%struct.adapter*, i32, i32, i64*) #2

declare dso_local i32 @ARRAY_SIZE(i64*) #2

declare dso_local i32 @t4_read_cimq_cfg(%struct.adapter*, i64*, i64*, i64*) #2

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #2

declare dso_local i32 @IBQRDADDR_G(i64) #2

declare dso_local i32 @IBQWRADDR_G(i64) #2

declare dso_local i32 @QUESOPCNT_G(i64) #2

declare dso_local i32 @QUEEOPCNT_G(i64) #2

declare dso_local i32 @QUEREMFLITS_G(i64) #2

declare dso_local i32 @QUERDADDR_G(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
