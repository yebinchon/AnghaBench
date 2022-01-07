; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_drv_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_drv_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32, i32, i32, i32, %struct.TYPE_3__, i32, %struct.TYPE_4__*, i32, i32, i32, i32, i32, %struct.be_dma_mem, %struct.be_dma_mem, %struct.be_dma_mem, %struct.be_dma_mem }
%struct.TYPE_3__ = type { i32, i64, i32 }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }
%struct.be_dma_mem = type { i32, i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@be_worker = common dso_local global i32 0, align 4
@ERR_RECOVERY_ST_NONE = common dso_local global i32 0, align 4
@be_err_detection_task = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.be_adapter*)* @be_drv_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_drv_init(%struct.be_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.be_adapter*, align 8
  %4 = alloca %struct.be_dma_mem*, align 8
  %5 = alloca %struct.be_dma_mem*, align 8
  %6 = alloca %struct.be_dma_mem*, align 8
  %7 = alloca %struct.be_dma_mem*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %3, align 8
  %10 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %10, i32 0, i32 15
  store %struct.be_dma_mem* %11, %struct.be_dma_mem** %4, align 8
  %12 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %13 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %12, i32 0, i32 14
  store %struct.be_dma_mem* %13, %struct.be_dma_mem** %5, align 8
  %14 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %15 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %14, i32 0, i32 13
  store %struct.be_dma_mem* %15, %struct.be_dma_mem** %6, align 8
  %16 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %17 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %16, i32 0, i32 12
  store %struct.be_dma_mem* %17, %struct.be_dma_mem** %7, align 8
  %18 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %19 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %18, i32 0, i32 6
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store %struct.device* %21, %struct.device** %8, align 8
  store i32 0, i32* %9, align 4
  %22 = load %struct.be_dma_mem*, %struct.be_dma_mem** %4, align 8
  %23 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %22, i32 0, i32 0
  store i32 20, i32* %23, align 8
  %24 = load %struct.device*, %struct.device** %8, align 8
  %25 = load %struct.be_dma_mem*, %struct.be_dma_mem** %4, align 8
  %26 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.be_dma_mem*, %struct.be_dma_mem** %4, align 8
  %29 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %28, i32 0, i32 1
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i8* @dma_alloc_coherent(%struct.device* %24, i32 %27, i8** %29, i32 %30)
  %32 = load %struct.be_dma_mem*, %struct.be_dma_mem** %4, align 8
  %33 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %32, i32 0, i32 2
  store i8* %31, i8** %33, align 8
  %34 = load %struct.be_dma_mem*, %struct.be_dma_mem** %4, align 8
  %35 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %34, i32 0, i32 2
  %36 = load i8*, i8** %35, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %1
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %189

41:                                               ; preds = %1
  %42 = load %struct.be_dma_mem*, %struct.be_dma_mem** %5, align 8
  %43 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %42, i32 0, i32 0
  store i32 4, i32* %43, align 8
  %44 = load %struct.be_dma_mem*, %struct.be_dma_mem** %4, align 8
  %45 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %44, i32 0, i32 2
  %46 = load i8*, i8** %45, align 8
  %47 = call i8* @PTR_ALIGN(i8* %46, i32 16)
  %48 = load %struct.be_dma_mem*, %struct.be_dma_mem** %5, align 8
  %49 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %48, i32 0, i32 2
  store i8* %47, i8** %49, align 8
  %50 = load %struct.be_dma_mem*, %struct.be_dma_mem** %4, align 8
  %51 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = call i8* @PTR_ALIGN(i8* %52, i32 16)
  %54 = load %struct.be_dma_mem*, %struct.be_dma_mem** %5, align 8
  %55 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %54, i32 0, i32 1
  store i8* %53, i8** %55, align 8
  %56 = load %struct.be_dma_mem*, %struct.be_dma_mem** %6, align 8
  %57 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %56, i32 0, i32 0
  store i32 4, i32* %57, align 8
  %58 = load %struct.device*, %struct.device** %8, align 8
  %59 = load %struct.be_dma_mem*, %struct.be_dma_mem** %6, align 8
  %60 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.be_dma_mem*, %struct.be_dma_mem** %6, align 8
  %63 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %62, i32 0, i32 1
  %64 = load i32, i32* @GFP_KERNEL, align 4
  %65 = call i8* @dma_alloc_coherent(%struct.device* %58, i32 %61, i8** %63, i32 %64)
  %66 = load %struct.be_dma_mem*, %struct.be_dma_mem** %6, align 8
  %67 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %66, i32 0, i32 2
  store i8* %65, i8** %67, align 8
  %68 = load %struct.be_dma_mem*, %struct.be_dma_mem** %6, align 8
  %69 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %68, i32 0, i32 2
  %70 = load i8*, i8** %69, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %41
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %9, align 4
  br label %176

75:                                               ; preds = %41
  %76 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %77 = call i64 @lancer_chip(%struct.be_adapter* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = load %struct.be_dma_mem*, %struct.be_dma_mem** %7, align 8
  %81 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %80, i32 0, i32 0
  store i32 4, i32* %81, align 8
  br label %101

82:                                               ; preds = %75
  %83 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %84 = call i64 @BE2_chip(%struct.be_adapter* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %82
  %87 = load %struct.be_dma_mem*, %struct.be_dma_mem** %7, align 8
  %88 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %87, i32 0, i32 0
  store i32 4, i32* %88, align 8
  br label %100

89:                                               ; preds = %82
  %90 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %91 = call i64 @BE3_chip(%struct.be_adapter* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %89
  %94 = load %struct.be_dma_mem*, %struct.be_dma_mem** %7, align 8
  %95 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %94, i32 0, i32 0
  store i32 4, i32* %95, align 8
  br label %99

96:                                               ; preds = %89
  %97 = load %struct.be_dma_mem*, %struct.be_dma_mem** %7, align 8
  %98 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %97, i32 0, i32 0
  store i32 4, i32* %98, align 8
  br label %99

99:                                               ; preds = %96, %93
  br label %100

100:                                              ; preds = %99, %86
  br label %101

101:                                              ; preds = %100, %79
  %102 = load %struct.device*, %struct.device** %8, align 8
  %103 = load %struct.be_dma_mem*, %struct.be_dma_mem** %7, align 8
  %104 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.be_dma_mem*, %struct.be_dma_mem** %7, align 8
  %107 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %106, i32 0, i32 1
  %108 = load i32, i32* @GFP_KERNEL, align 4
  %109 = call i8* @dma_alloc_coherent(%struct.device* %102, i32 %105, i8** %107, i32 %108)
  %110 = load %struct.be_dma_mem*, %struct.be_dma_mem** %7, align 8
  %111 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %110, i32 0, i32 2
  store i8* %109, i8** %111, align 8
  %112 = load %struct.be_dma_mem*, %struct.be_dma_mem** %7, align 8
  %113 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %112, i32 0, i32 2
  %114 = load i8*, i8** %113, align 8
  %115 = icmp ne i8* %114, null
  br i1 %115, label %119, label %116

116:                                              ; preds = %101
  %117 = load i32, i32* @ENOMEM, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %9, align 4
  br label %164

119:                                              ; preds = %101
  %120 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %121 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %120, i32 0, i32 11
  %122 = call i32 @mutex_init(i32* %121)
  %123 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %124 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %123, i32 0, i32 10
  %125 = call i32 @mutex_init(i32* %124)
  %126 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %127 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %126, i32 0, i32 9
  %128 = call i32 @mutex_init(i32* %127)
  %129 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %130 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %129, i32 0, i32 8
  %131 = call i32 @spin_lock_init(i32* %130)
  %132 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %133 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %132, i32 0, i32 7
  %134 = call i32 @init_completion(i32* %133)
  %135 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %136 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %135, i32 0, i32 6
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %136, align 8
  %138 = call i32 @pci_save_state(%struct.TYPE_4__* %137)
  %139 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %140 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %139, i32 0, i32 5
  %141 = load i32, i32* @be_worker, align 4
  %142 = call i32 @INIT_DELAYED_WORK(i32* %140, i32 %141)
  %143 = load i32, i32* @ERR_RECOVERY_ST_NONE, align 4
  %144 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %145 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %144, i32 0, i32 4
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 2
  store i32 %143, i32* %146, align 8
  %147 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %148 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %147, i32 0, i32 4
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 1
  store i64 0, i64* %149, align 8
  %150 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %151 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %150, i32 0, i32 4
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 0
  %153 = load i32, i32* @be_err_detection_task, align 4
  %154 = call i32 @INIT_DELAYED_WORK(i32* %152, i32 %153)
  %155 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %156 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %155, i32 0, i32 0
  store i32 1, i32* %156, align 8
  %157 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %158 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %157, i32 0, i32 1
  store i32 1, i32* %158, align 4
  %159 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %160 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %159, i32 0, i32 2
  store i32 64, i32* %160, align 8
  %161 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %162 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %161, i32 0, i32 3
  %163 = call i32 @INIT_LIST_HEAD(i32* %162)
  store i32 0, i32* %2, align 4
  br label %189

164:                                              ; preds = %116
  %165 = load %struct.device*, %struct.device** %8, align 8
  %166 = load %struct.be_dma_mem*, %struct.be_dma_mem** %6, align 8
  %167 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.be_dma_mem*, %struct.be_dma_mem** %6, align 8
  %170 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %169, i32 0, i32 2
  %171 = load i8*, i8** %170, align 8
  %172 = load %struct.be_dma_mem*, %struct.be_dma_mem** %6, align 8
  %173 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %172, i32 0, i32 1
  %174 = load i8*, i8** %173, align 8
  %175 = call i32 @dma_free_coherent(%struct.device* %165, i32 %168, i8* %171, i8* %174)
  br label %176

176:                                              ; preds = %164, %72
  %177 = load %struct.device*, %struct.device** %8, align 8
  %178 = load %struct.be_dma_mem*, %struct.be_dma_mem** %4, align 8
  %179 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.be_dma_mem*, %struct.be_dma_mem** %4, align 8
  %182 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %181, i32 0, i32 2
  %183 = load i8*, i8** %182, align 8
  %184 = load %struct.be_dma_mem*, %struct.be_dma_mem** %4, align 8
  %185 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %184, i32 0, i32 1
  %186 = load i8*, i8** %185, align 8
  %187 = call i32 @dma_free_coherent(%struct.device* %177, i32 %180, i8* %183, i8* %186)
  %188 = load i32, i32* %9, align 4
  store i32 %188, i32* %2, align 4
  br label %189

189:                                              ; preds = %176, %119, %38
  %190 = load i32, i32* %2, align 4
  ret i32 %190
}

declare dso_local i8* @dma_alloc_coherent(%struct.device*, i32, i8**, i32) #1

declare dso_local i8* @PTR_ALIGN(i8*, i32) #1

declare dso_local i64 @lancer_chip(%struct.be_adapter*) #1

declare dso_local i64 @BE2_chip(%struct.be_adapter*) #1

declare dso_local i64 @BE3_chip(%struct.be_adapter*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @pci_save_state(%struct.TYPE_4__*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
