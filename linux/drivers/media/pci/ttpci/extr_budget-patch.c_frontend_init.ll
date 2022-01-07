; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_budget-patch.c_frontend_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_budget-patch.c_frontend_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.budget_patch = type { %struct.TYPE_11__*, i32, %struct.TYPE_10__*, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_8__, i32* }
%struct.TYPE_8__ = type { i8*, i8*, i8*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }

@ves1x93_attach = common dso_local global i32 0, align 4
@alps_bsrv2_config = common dso_local global i32 0, align 4
@alps_bsrv2_tuner_set_params = common dso_local global i32 0, align 4
@budget_patch_diseqc_send_master_cmd = common dso_local global i8* null, align 8
@budget_patch_diseqc_send_burst = common dso_local global i8* null, align 8
@budget_patch_set_tone = common dso_local global i8* null, align 8
@stv0299_attach = common dso_local global i32 0, align 4
@alps_bsru6_config = common dso_local global i32 0, align 4
@alps_bsru6_tuner_set_params = common dso_local global i32 0, align 4
@budget_diseqc_send_master_cmd = common dso_local global i8* null, align 8
@budget_diseqc_send_burst = common dso_local global i8* null, align 8
@budget_set_tone = common dso_local global i8* null, align 8
@tda8083_attach = common dso_local global i32 0, align 4
@grundig_29504_451_config = common dso_local global i32 0, align 4
@grundig_29504_451_tuner_set_params = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [89 x i8] c"dvb-ttpci: A frontend driver was not found for device [%04x:%04x] subsystem [%04x:%04x]\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"budget-av: Frontend registration failed!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.budget_patch*)* @frontend_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @frontend_init(%struct.budget_patch* %0) #0 {
  %2 = alloca %struct.budget_patch*, align 8
  store %struct.budget_patch* %0, %struct.budget_patch** %2, align 8
  %3 = load %struct.budget_patch*, %struct.budget_patch** %2, align 8
  %4 = getelementptr inbounds %struct.budget_patch, %struct.budget_patch* %3, i32 0, i32 2
  %5 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %131 [
    i32 0, label %10
    i32 4115, label %10
  ]

10:                                               ; preds = %1, %1
  %11 = load i32, i32* @ves1x93_attach, align 4
  %12 = load %struct.budget_patch*, %struct.budget_patch** %2, align 8
  %13 = getelementptr inbounds %struct.budget_patch, %struct.budget_patch* %12, i32 0, i32 3
  %14 = call i8* @dvb_attach(i32 %11, i32* @alps_bsrv2_config, i32* %13)
  %15 = bitcast i8* %14 to %struct.TYPE_11__*
  %16 = load %struct.budget_patch*, %struct.budget_patch** %2, align 8
  %17 = getelementptr inbounds %struct.budget_patch, %struct.budget_patch* %16, i32 0, i32 0
  store %struct.TYPE_11__* %15, %struct.TYPE_11__** %17, align 8
  %18 = load %struct.budget_patch*, %struct.budget_patch** %2, align 8
  %19 = getelementptr inbounds %struct.budget_patch, %struct.budget_patch* %18, i32 0, i32 0
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %21 = icmp ne %struct.TYPE_11__* %20, null
  br i1 %21, label %22, label %48

22:                                               ; preds = %10
  %23 = load i32, i32* @alps_bsrv2_tuner_set_params, align 4
  %24 = load %struct.budget_patch*, %struct.budget_patch** %2, align 8
  %25 = getelementptr inbounds %struct.budget_patch, %struct.budget_patch* %24, i32 0, i32 0
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  store i32 %23, i32* %29, align 8
  %30 = load i8*, i8** @budget_patch_diseqc_send_master_cmd, align 8
  %31 = load %struct.budget_patch*, %struct.budget_patch** %2, align 8
  %32 = getelementptr inbounds %struct.budget_patch, %struct.budget_patch* %31, i32 0, i32 0
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 2
  store i8* %30, i8** %35, align 8
  %36 = load i8*, i8** @budget_patch_diseqc_send_burst, align 8
  %37 = load %struct.budget_patch*, %struct.budget_patch** %2, align 8
  %38 = getelementptr inbounds %struct.budget_patch, %struct.budget_patch* %37, i32 0, i32 0
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  store i8* %36, i8** %41, align 8
  %42 = load i8*, i8** @budget_patch_set_tone, align 8
  %43 = load %struct.budget_patch*, %struct.budget_patch** %2, align 8
  %44 = getelementptr inbounds %struct.budget_patch, %struct.budget_patch* %43, i32 0, i32 0
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  store i8* %42, i8** %47, align 8
  br label %131

48:                                               ; preds = %10
  %49 = load i32, i32* @stv0299_attach, align 4
  %50 = load %struct.budget_patch*, %struct.budget_patch** %2, align 8
  %51 = getelementptr inbounds %struct.budget_patch, %struct.budget_patch* %50, i32 0, i32 3
  %52 = call i8* @dvb_attach(i32 %49, i32* @alps_bsru6_config, i32* %51)
  %53 = bitcast i8* %52 to %struct.TYPE_11__*
  %54 = load %struct.budget_patch*, %struct.budget_patch** %2, align 8
  %55 = getelementptr inbounds %struct.budget_patch, %struct.budget_patch* %54, i32 0, i32 0
  store %struct.TYPE_11__* %53, %struct.TYPE_11__** %55, align 8
  %56 = load %struct.budget_patch*, %struct.budget_patch** %2, align 8
  %57 = getelementptr inbounds %struct.budget_patch, %struct.budget_patch* %56, i32 0, i32 0
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %57, align 8
  %59 = icmp ne %struct.TYPE_11__* %58, null
  br i1 %59, label %60, label %92

60:                                               ; preds = %48
  %61 = load i32, i32* @alps_bsru6_tuner_set_params, align 4
  %62 = load %struct.budget_patch*, %struct.budget_patch** %2, align 8
  %63 = getelementptr inbounds %struct.budget_patch, %struct.budget_patch* %62, i32 0, i32 0
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  store i32 %61, i32* %67, align 8
  %68 = load %struct.budget_patch*, %struct.budget_patch** %2, align 8
  %69 = getelementptr inbounds %struct.budget_patch, %struct.budget_patch* %68, i32 0, i32 3
  %70 = load %struct.budget_patch*, %struct.budget_patch** %2, align 8
  %71 = getelementptr inbounds %struct.budget_patch, %struct.budget_patch* %70, i32 0, i32 0
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 1
  store i32* %69, i32** %73, align 8
  %74 = load i8*, i8** @budget_diseqc_send_master_cmd, align 8
  %75 = load %struct.budget_patch*, %struct.budget_patch** %2, align 8
  %76 = getelementptr inbounds %struct.budget_patch, %struct.budget_patch* %75, i32 0, i32 0
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 2
  store i8* %74, i8** %79, align 8
  %80 = load i8*, i8** @budget_diseqc_send_burst, align 8
  %81 = load %struct.budget_patch*, %struct.budget_patch** %2, align 8
  %82 = getelementptr inbounds %struct.budget_patch, %struct.budget_patch* %81, i32 0, i32 0
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  store i8* %80, i8** %85, align 8
  %86 = load i8*, i8** @budget_set_tone, align 8
  %87 = load %struct.budget_patch*, %struct.budget_patch** %2, align 8
  %88 = getelementptr inbounds %struct.budget_patch, %struct.budget_patch* %87, i32 0, i32 0
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  store i8* %86, i8** %91, align 8
  br label %131

92:                                               ; preds = %48
  %93 = load i32, i32* @tda8083_attach, align 4
  %94 = load %struct.budget_patch*, %struct.budget_patch** %2, align 8
  %95 = getelementptr inbounds %struct.budget_patch, %struct.budget_patch* %94, i32 0, i32 3
  %96 = call i8* @dvb_attach(i32 %93, i32* @grundig_29504_451_config, i32* %95)
  %97 = bitcast i8* %96 to %struct.TYPE_11__*
  %98 = load %struct.budget_patch*, %struct.budget_patch** %2, align 8
  %99 = getelementptr inbounds %struct.budget_patch, %struct.budget_patch* %98, i32 0, i32 0
  store %struct.TYPE_11__* %97, %struct.TYPE_11__** %99, align 8
  %100 = load %struct.budget_patch*, %struct.budget_patch** %2, align 8
  %101 = getelementptr inbounds %struct.budget_patch, %struct.budget_patch* %100, i32 0, i32 0
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %101, align 8
  %103 = icmp ne %struct.TYPE_11__* %102, null
  br i1 %103, label %104, label %130

104:                                              ; preds = %92
  %105 = load i32, i32* @grundig_29504_451_tuner_set_params, align 4
  %106 = load %struct.budget_patch*, %struct.budget_patch** %2, align 8
  %107 = getelementptr inbounds %struct.budget_patch, %struct.budget_patch* %106, i32 0, i32 0
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  store i32 %105, i32* %111, align 8
  %112 = load i8*, i8** @budget_diseqc_send_master_cmd, align 8
  %113 = load %struct.budget_patch*, %struct.budget_patch** %2, align 8
  %114 = getelementptr inbounds %struct.budget_patch, %struct.budget_patch* %113, i32 0, i32 0
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 2
  store i8* %112, i8** %117, align 8
  %118 = load i8*, i8** @budget_diseqc_send_burst, align 8
  %119 = load %struct.budget_patch*, %struct.budget_patch** %2, align 8
  %120 = getelementptr inbounds %struct.budget_patch, %struct.budget_patch* %119, i32 0, i32 0
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 1
  store i8* %118, i8** %123, align 8
  %124 = load i8*, i8** @budget_set_tone, align 8
  %125 = load %struct.budget_patch*, %struct.budget_patch** %2, align 8
  %126 = getelementptr inbounds %struct.budget_patch, %struct.budget_patch* %125, i32 0, i32 0
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  store i8* %124, i8** %129, align 8
  br label %131

130:                                              ; preds = %92
  br label %131

131:                                              ; preds = %1, %130, %104, %60, %22
  %132 = load %struct.budget_patch*, %struct.budget_patch** %2, align 8
  %133 = getelementptr inbounds %struct.budget_patch, %struct.budget_patch* %132, i32 0, i32 0
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %133, align 8
  %135 = icmp eq %struct.TYPE_11__* %134, null
  br i1 %135, label %136, label %166

136:                                              ; preds = %131
  %137 = load %struct.budget_patch*, %struct.budget_patch** %2, align 8
  %138 = getelementptr inbounds %struct.budget_patch, %struct.budget_patch* %137, i32 0, i32 2
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.budget_patch*, %struct.budget_patch** %2, align 8
  %145 = getelementptr inbounds %struct.budget_patch, %struct.budget_patch* %144, i32 0, i32 2
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.budget_patch*, %struct.budget_patch** %2, align 8
  %152 = getelementptr inbounds %struct.budget_patch, %struct.budget_patch* %151, i32 0, i32 2
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.budget_patch*, %struct.budget_patch** %2, align 8
  %159 = getelementptr inbounds %struct.budget_patch, %struct.budget_patch* %158, i32 0, i32 2
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 0
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i64 0, i64 0), i32 %143, i32 %150, i32 %157, i32 %164)
  br label %183

166:                                              ; preds = %131
  %167 = load %struct.budget_patch*, %struct.budget_patch** %2, align 8
  %168 = getelementptr inbounds %struct.budget_patch, %struct.budget_patch* %167, i32 0, i32 1
  %169 = load %struct.budget_patch*, %struct.budget_patch** %2, align 8
  %170 = getelementptr inbounds %struct.budget_patch, %struct.budget_patch* %169, i32 0, i32 0
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %170, align 8
  %172 = call i64 @dvb_register_frontend(i32* %168, %struct.TYPE_11__* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %182

174:                                              ; preds = %166
  %175 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %176 = load %struct.budget_patch*, %struct.budget_patch** %2, align 8
  %177 = getelementptr inbounds %struct.budget_patch, %struct.budget_patch* %176, i32 0, i32 0
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %177, align 8
  %179 = call i32 @dvb_frontend_detach(%struct.TYPE_11__* %178)
  %180 = load %struct.budget_patch*, %struct.budget_patch** %2, align 8
  %181 = getelementptr inbounds %struct.budget_patch, %struct.budget_patch* %180, i32 0, i32 0
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %181, align 8
  br label %182

182:                                              ; preds = %174, %166
  br label %183

183:                                              ; preds = %182, %136
  ret void
}

declare dso_local i8* @dvb_attach(i32, i32*, i32*) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i64 @dvb_register_frontend(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @dvb_frontend_detach(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
