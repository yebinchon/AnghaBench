; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_dl.c_vsp1_dl_cmd_pool_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_dl.c_vsp1_dl_cmd_pool_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.vsp1_dl_cmd_pool = type { i64, i32, i32, i64, i64, %struct.vsp1_dl_cmd_pool*, %struct.vsp1_dl_cmd_pool*, i64, %struct.vsp1_dl_cmd_pool*, i32, %struct.vsp1_dl_cmd_pool*, i32 }
%struct.vsp1_device = type { i32 }
%struct.vsp1_dl_ext_cmd = type { i64, i32, i32, i64, i64, %struct.vsp1_dl_ext_cmd*, %struct.vsp1_dl_ext_cmd*, i64, %struct.vsp1_dl_ext_cmd*, i32, %struct.vsp1_dl_ext_cmd*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@vsp1_extended_commands = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vsp1_dl_cmd_pool* (%struct.vsp1_device*, i32, i32)* @vsp1_dl_cmd_pool_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vsp1_dl_cmd_pool* @vsp1_dl_cmd_pool_create(%struct.vsp1_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.vsp1_dl_cmd_pool*, align 8
  %5 = alloca %struct.vsp1_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.vsp1_dl_cmd_pool*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.vsp1_dl_ext_cmd*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.vsp1_device* %0, %struct.vsp1_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.vsp1_dl_ext_cmd* @kzalloc(i32 88, i32 %14)
  %16 = bitcast %struct.vsp1_dl_ext_cmd* %15 to %struct.vsp1_dl_cmd_pool*
  store %struct.vsp1_dl_cmd_pool* %16, %struct.vsp1_dl_cmd_pool** %8, align 8
  %17 = load %struct.vsp1_dl_cmd_pool*, %struct.vsp1_dl_cmd_pool** %8, align 8
  %18 = icmp ne %struct.vsp1_dl_cmd_pool* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  store %struct.vsp1_dl_cmd_pool* null, %struct.vsp1_dl_cmd_pool** %4, align 8
  br label %157

20:                                               ; preds = %3
  %21 = load %struct.vsp1_dl_cmd_pool*, %struct.vsp1_dl_cmd_pool** %8, align 8
  %22 = getelementptr inbounds %struct.vsp1_dl_cmd_pool, %struct.vsp1_dl_cmd_pool* %21, i32 0, i32 11
  %23 = call i32 @spin_lock_init(i32* %22)
  %24 = load %struct.vsp1_dl_cmd_pool*, %struct.vsp1_dl_cmd_pool** %8, align 8
  %25 = getelementptr inbounds %struct.vsp1_dl_cmd_pool, %struct.vsp1_dl_cmd_pool* %24, i32 0, i32 2
  %26 = call i32 @INIT_LIST_HEAD(i32* %25)
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.vsp1_dl_ext_cmd* @kcalloc(i32 %27, i32 88, i32 %28)
  %30 = bitcast %struct.vsp1_dl_ext_cmd* %29 to %struct.vsp1_dl_cmd_pool*
  %31 = load %struct.vsp1_dl_cmd_pool*, %struct.vsp1_dl_cmd_pool** %8, align 8
  %32 = getelementptr inbounds %struct.vsp1_dl_cmd_pool, %struct.vsp1_dl_cmd_pool* %31, i32 0, i32 8
  store %struct.vsp1_dl_cmd_pool* %30, %struct.vsp1_dl_cmd_pool** %32, align 8
  %33 = load %struct.vsp1_dl_cmd_pool*, %struct.vsp1_dl_cmd_pool** %8, align 8
  %34 = getelementptr inbounds %struct.vsp1_dl_cmd_pool, %struct.vsp1_dl_cmd_pool* %33, i32 0, i32 8
  %35 = load %struct.vsp1_dl_cmd_pool*, %struct.vsp1_dl_cmd_pool** %34, align 8
  %36 = icmp ne %struct.vsp1_dl_cmd_pool* %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %20
  %38 = load %struct.vsp1_dl_cmd_pool*, %struct.vsp1_dl_cmd_pool** %8, align 8
  %39 = bitcast %struct.vsp1_dl_cmd_pool* %38 to %struct.vsp1_dl_ext_cmd*
  %40 = call i32 @kfree(%struct.vsp1_dl_ext_cmd* %39)
  store %struct.vsp1_dl_cmd_pool* null, %struct.vsp1_dl_cmd_pool** %4, align 8
  br label %157

41:                                               ; preds = %20
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vsp1_extended_commands, align 8
  %43 = load i32, i32* %6, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = add i64 4, %48
  store i64 %49, i64* %10, align 8
  %50 = load i64, i64* %10, align 8
  %51 = call i64 @ALIGN(i64 %50, i32 16)
  store i64 %51, i64* %10, align 8
  %52 = load i64, i64* %10, align 8
  %53 = load i32, i32* %7, align 4
  %54 = zext i32 %53 to i64
  %55 = mul i64 %52, %54
  %56 = load %struct.vsp1_dl_cmd_pool*, %struct.vsp1_dl_cmd_pool** %8, align 8
  %57 = getelementptr inbounds %struct.vsp1_dl_cmd_pool, %struct.vsp1_dl_cmd_pool* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  %58 = load %struct.vsp1_device*, %struct.vsp1_device** %5, align 8
  %59 = getelementptr inbounds %struct.vsp1_device, %struct.vsp1_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.vsp1_dl_cmd_pool*, %struct.vsp1_dl_cmd_pool** %8, align 8
  %62 = getelementptr inbounds %struct.vsp1_dl_cmd_pool, %struct.vsp1_dl_cmd_pool* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.vsp1_dl_cmd_pool*, %struct.vsp1_dl_cmd_pool** %8, align 8
  %65 = getelementptr inbounds %struct.vsp1_dl_cmd_pool, %struct.vsp1_dl_cmd_pool* %64, i32 0, i32 3
  %66 = load i32, i32* @GFP_KERNEL, align 4
  %67 = call %struct.vsp1_dl_ext_cmd* @dma_alloc_wc(i32 %60, i64 %63, i64* %65, i32 %66)
  %68 = bitcast %struct.vsp1_dl_ext_cmd* %67 to %struct.vsp1_dl_cmd_pool*
  %69 = load %struct.vsp1_dl_cmd_pool*, %struct.vsp1_dl_cmd_pool** %8, align 8
  %70 = getelementptr inbounds %struct.vsp1_dl_cmd_pool, %struct.vsp1_dl_cmd_pool* %69, i32 0, i32 5
  store %struct.vsp1_dl_cmd_pool* %68, %struct.vsp1_dl_cmd_pool** %70, align 8
  %71 = load %struct.vsp1_dl_cmd_pool*, %struct.vsp1_dl_cmd_pool** %8, align 8
  %72 = getelementptr inbounds %struct.vsp1_dl_cmd_pool, %struct.vsp1_dl_cmd_pool* %71, i32 0, i32 5
  %73 = load %struct.vsp1_dl_cmd_pool*, %struct.vsp1_dl_cmd_pool** %72, align 8
  %74 = icmp ne %struct.vsp1_dl_cmd_pool* %73, null
  br i1 %74, label %84, label %75

75:                                               ; preds = %41
  %76 = load %struct.vsp1_dl_cmd_pool*, %struct.vsp1_dl_cmd_pool** %8, align 8
  %77 = getelementptr inbounds %struct.vsp1_dl_cmd_pool, %struct.vsp1_dl_cmd_pool* %76, i32 0, i32 8
  %78 = load %struct.vsp1_dl_cmd_pool*, %struct.vsp1_dl_cmd_pool** %77, align 8
  %79 = bitcast %struct.vsp1_dl_cmd_pool* %78 to %struct.vsp1_dl_ext_cmd*
  %80 = call i32 @kfree(%struct.vsp1_dl_ext_cmd* %79)
  %81 = load %struct.vsp1_dl_cmd_pool*, %struct.vsp1_dl_cmd_pool** %8, align 8
  %82 = bitcast %struct.vsp1_dl_cmd_pool* %81 to %struct.vsp1_dl_ext_cmd*
  %83 = call i32 @kfree(%struct.vsp1_dl_ext_cmd* %82)
  store %struct.vsp1_dl_cmd_pool* null, %struct.vsp1_dl_cmd_pool** %4, align 8
  br label %157

84:                                               ; preds = %41
  store i32 0, i32* %9, align 4
  br label %85

85:                                               ; preds = %152, %84
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp ult i32 %86, %87
  br i1 %88, label %89, label %155

89:                                               ; preds = %85
  %90 = load %struct.vsp1_dl_cmd_pool*, %struct.vsp1_dl_cmd_pool** %8, align 8
  %91 = getelementptr inbounds %struct.vsp1_dl_cmd_pool, %struct.vsp1_dl_cmd_pool* %90, i32 0, i32 8
  %92 = load %struct.vsp1_dl_cmd_pool*, %struct.vsp1_dl_cmd_pool** %91, align 8
  %93 = load i32, i32* %9, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds %struct.vsp1_dl_cmd_pool, %struct.vsp1_dl_cmd_pool* %92, i64 %94
  %96 = bitcast %struct.vsp1_dl_cmd_pool* %95 to %struct.vsp1_dl_ext_cmd*
  store %struct.vsp1_dl_ext_cmd* %96, %struct.vsp1_dl_ext_cmd** %11, align 8
  %97 = load i32, i32* %9, align 4
  %98 = zext i32 %97 to i64
  %99 = load i64, i64* %10, align 8
  %100 = mul i64 %98, %99
  store i64 %100, i64* %12, align 8
  %101 = load i64, i64* %12, align 8
  %102 = add i64 4, %101
  store i64 %102, i64* %13, align 8
  %103 = load %struct.vsp1_dl_cmd_pool*, %struct.vsp1_dl_cmd_pool** %8, align 8
  %104 = bitcast %struct.vsp1_dl_cmd_pool* %103 to %struct.vsp1_dl_ext_cmd*
  %105 = load %struct.vsp1_dl_ext_cmd*, %struct.vsp1_dl_ext_cmd** %11, align 8
  %106 = getelementptr inbounds %struct.vsp1_dl_ext_cmd, %struct.vsp1_dl_ext_cmd* %105, i32 0, i32 10
  store %struct.vsp1_dl_ext_cmd* %104, %struct.vsp1_dl_ext_cmd** %106, align 8
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vsp1_extended_commands, align 8
  %108 = load i32, i32* %6, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.vsp1_dl_ext_cmd*, %struct.vsp1_dl_ext_cmd** %11, align 8
  %114 = getelementptr inbounds %struct.vsp1_dl_ext_cmd, %struct.vsp1_dl_ext_cmd* %113, i32 0, i32 9
  store i32 %112, i32* %114, align 8
  %115 = load %struct.vsp1_dl_ext_cmd*, %struct.vsp1_dl_ext_cmd** %11, align 8
  %116 = getelementptr inbounds %struct.vsp1_dl_ext_cmd, %struct.vsp1_dl_ext_cmd* %115, i32 0, i32 1
  store i32 1, i32* %116, align 8
  %117 = load %struct.vsp1_dl_cmd_pool*, %struct.vsp1_dl_cmd_pool** %8, align 8
  %118 = getelementptr inbounds %struct.vsp1_dl_cmd_pool, %struct.vsp1_dl_cmd_pool* %117, i32 0, i32 5
  %119 = load %struct.vsp1_dl_cmd_pool*, %struct.vsp1_dl_cmd_pool** %118, align 8
  %120 = load i64, i64* %12, align 8
  %121 = getelementptr inbounds %struct.vsp1_dl_cmd_pool, %struct.vsp1_dl_cmd_pool* %119, i64 %120
  %122 = bitcast %struct.vsp1_dl_cmd_pool* %121 to %struct.vsp1_dl_ext_cmd*
  %123 = load %struct.vsp1_dl_ext_cmd*, %struct.vsp1_dl_ext_cmd** %11, align 8
  %124 = getelementptr inbounds %struct.vsp1_dl_ext_cmd, %struct.vsp1_dl_ext_cmd* %123, i32 0, i32 8
  store %struct.vsp1_dl_ext_cmd* %122, %struct.vsp1_dl_ext_cmd** %124, align 8
  %125 = load %struct.vsp1_dl_cmd_pool*, %struct.vsp1_dl_cmd_pool** %8, align 8
  %126 = getelementptr inbounds %struct.vsp1_dl_cmd_pool, %struct.vsp1_dl_cmd_pool* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* %12, align 8
  %129 = add i64 %127, %128
  %130 = load %struct.vsp1_dl_ext_cmd*, %struct.vsp1_dl_ext_cmd** %11, align 8
  %131 = getelementptr inbounds %struct.vsp1_dl_ext_cmd, %struct.vsp1_dl_ext_cmd* %130, i32 0, i32 7
  store i64 %129, i64* %131, align 8
  %132 = load %struct.vsp1_dl_cmd_pool*, %struct.vsp1_dl_cmd_pool** %8, align 8
  %133 = getelementptr inbounds %struct.vsp1_dl_cmd_pool, %struct.vsp1_dl_cmd_pool* %132, i32 0, i32 5
  %134 = load %struct.vsp1_dl_cmd_pool*, %struct.vsp1_dl_cmd_pool** %133, align 8
  %135 = load i64, i64* %13, align 8
  %136 = getelementptr inbounds %struct.vsp1_dl_cmd_pool, %struct.vsp1_dl_cmd_pool* %134, i64 %135
  %137 = bitcast %struct.vsp1_dl_cmd_pool* %136 to %struct.vsp1_dl_ext_cmd*
  %138 = load %struct.vsp1_dl_ext_cmd*, %struct.vsp1_dl_ext_cmd** %11, align 8
  %139 = getelementptr inbounds %struct.vsp1_dl_ext_cmd, %struct.vsp1_dl_ext_cmd* %138, i32 0, i32 6
  store %struct.vsp1_dl_ext_cmd* %137, %struct.vsp1_dl_ext_cmd** %139, align 8
  %140 = load %struct.vsp1_dl_cmd_pool*, %struct.vsp1_dl_cmd_pool** %8, align 8
  %141 = getelementptr inbounds %struct.vsp1_dl_cmd_pool, %struct.vsp1_dl_cmd_pool* %140, i32 0, i32 3
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* %13, align 8
  %144 = add i64 %142, %143
  %145 = load %struct.vsp1_dl_ext_cmd*, %struct.vsp1_dl_ext_cmd** %11, align 8
  %146 = getelementptr inbounds %struct.vsp1_dl_ext_cmd, %struct.vsp1_dl_ext_cmd* %145, i32 0, i32 4
  store i64 %144, i64* %146, align 8
  %147 = load %struct.vsp1_dl_ext_cmd*, %struct.vsp1_dl_ext_cmd** %11, align 8
  %148 = getelementptr inbounds %struct.vsp1_dl_ext_cmd, %struct.vsp1_dl_ext_cmd* %147, i32 0, i32 2
  %149 = load %struct.vsp1_dl_cmd_pool*, %struct.vsp1_dl_cmd_pool** %8, align 8
  %150 = getelementptr inbounds %struct.vsp1_dl_cmd_pool, %struct.vsp1_dl_cmd_pool* %149, i32 0, i32 2
  %151 = call i32 @list_add_tail(i32* %148, i32* %150)
  br label %152

152:                                              ; preds = %89
  %153 = load i32, i32* %9, align 4
  %154 = add i32 %153, 1
  store i32 %154, i32* %9, align 4
  br label %85

155:                                              ; preds = %85
  %156 = load %struct.vsp1_dl_cmd_pool*, %struct.vsp1_dl_cmd_pool** %8, align 8
  store %struct.vsp1_dl_cmd_pool* %156, %struct.vsp1_dl_cmd_pool** %4, align 8
  br label %157

157:                                              ; preds = %155, %75, %37, %19
  %158 = load %struct.vsp1_dl_cmd_pool*, %struct.vsp1_dl_cmd_pool** %4, align 8
  ret %struct.vsp1_dl_cmd_pool* %158
}

declare dso_local %struct.vsp1_dl_ext_cmd* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.vsp1_dl_ext_cmd* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.vsp1_dl_ext_cmd*) #1

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local %struct.vsp1_dl_ext_cmd* @dma_alloc_wc(i32, i64, i64*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
