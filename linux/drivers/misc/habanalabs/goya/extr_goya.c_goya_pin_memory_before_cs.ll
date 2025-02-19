; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_pin_memory_before_cs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_pin_memory_before_cs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.hl_device*, i32, i32, i32)* }
%struct.hl_cs_parser = type { i32, i32 }
%struct.packet_lin_dma = type { i32 }
%struct.hl_userptr = type { i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"failed to map sgt with DMA region\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hl_device*, %struct.hl_cs_parser*, %struct.packet_lin_dma*, i32, i32)* @goya_pin_memory_before_cs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @goya_pin_memory_before_cs(%struct.hl_device* %0, %struct.hl_cs_parser* %1, %struct.packet_lin_dma* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hl_device*, align 8
  %8 = alloca %struct.hl_cs_parser*, align 8
  %9 = alloca %struct.packet_lin_dma*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.hl_userptr*, align 8
  %13 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %7, align 8
  store %struct.hl_cs_parser* %1, %struct.hl_cs_parser** %8, align 8
  store %struct.packet_lin_dma* %2, %struct.packet_lin_dma** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.hl_device*, %struct.hl_device** %7, align 8
  %15 = load i32, i32* %10, align 4
  %16 = load %struct.packet_lin_dma*, %struct.packet_lin_dma** %9, align 8
  %17 = getelementptr inbounds %struct.packet_lin_dma, %struct.packet_lin_dma* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @le32_to_cpu(i32 %18)
  %20 = load %struct.hl_cs_parser*, %struct.hl_cs_parser** %8, align 8
  %21 = getelementptr inbounds %struct.hl_cs_parser, %struct.hl_cs_parser* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @hl_userptr_is_pinned(%struct.hl_device* %14, i32 %15, i32 %19, i32 %22, %struct.hl_userptr** %12)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %5
  br label %84

26:                                               ; preds = %5
  %27 = load i32, i32* @GFP_ATOMIC, align 4
  %28 = call %struct.hl_userptr* @kzalloc(i32 24, i32 %27)
  store %struct.hl_userptr* %28, %struct.hl_userptr** %12, align 8
  %29 = load %struct.hl_userptr*, %struct.hl_userptr** %12, align 8
  %30 = icmp ne %struct.hl_userptr* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %104

34:                                               ; preds = %26
  %35 = load %struct.hl_device*, %struct.hl_device** %7, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.packet_lin_dma*, %struct.packet_lin_dma** %9, align 8
  %38 = getelementptr inbounds %struct.packet_lin_dma, %struct.packet_lin_dma* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @le32_to_cpu(i32 %39)
  %41 = load %struct.hl_userptr*, %struct.hl_userptr** %12, align 8
  %42 = call i32 @hl_pin_host_memory(%struct.hl_device* %35, i32 %36, i32 %40, %struct.hl_userptr* %41)
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %34
  br label %100

46:                                               ; preds = %34
  %47 = load %struct.hl_userptr*, %struct.hl_userptr** %12, align 8
  %48 = getelementptr inbounds %struct.hl_userptr, %struct.hl_userptr* %47, i32 0, i32 3
  %49 = load %struct.hl_cs_parser*, %struct.hl_cs_parser** %8, align 8
  %50 = getelementptr inbounds %struct.hl_cs_parser, %struct.hl_cs_parser* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @list_add_tail(i32* %48, i32 %51)
  %53 = load %struct.hl_device*, %struct.hl_device** %7, align 8
  %54 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %53, i32 0, i32 1
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32 (%struct.hl_device*, i32, i32, i32)*, i32 (%struct.hl_device*, i32, i32, i32)** %56, align 8
  %58 = load %struct.hl_device*, %struct.hl_device** %7, align 8
  %59 = load %struct.hl_userptr*, %struct.hl_userptr** %12, align 8
  %60 = getelementptr inbounds %struct.hl_userptr, %struct.hl_userptr* %59, i32 0, i32 2
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.hl_userptr*, %struct.hl_userptr** %12, align 8
  %65 = getelementptr inbounds %struct.hl_userptr, %struct.hl_userptr* %64, i32 0, i32 2
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %11, align 4
  %70 = call i32 %57(%struct.hl_device* %58, i32 %63, i32 %68, i32 %69)
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %13, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %46
  %74 = load %struct.hl_device*, %struct.hl_device** %7, align 8
  %75 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @dev_err(i32 %76, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %96

78:                                               ; preds = %46
  %79 = load %struct.hl_userptr*, %struct.hl_userptr** %12, align 8
  %80 = getelementptr inbounds %struct.hl_userptr, %struct.hl_userptr* %79, i32 0, i32 0
  store i32 1, i32* %80, align 8
  %81 = load i32, i32* %11, align 4
  %82 = load %struct.hl_userptr*, %struct.hl_userptr** %12, align 8
  %83 = getelementptr inbounds %struct.hl_userptr, %struct.hl_userptr* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  br label %84

84:                                               ; preds = %78, %25
  %85 = load %struct.hl_device*, %struct.hl_device** %7, align 8
  %86 = load %struct.hl_userptr*, %struct.hl_userptr** %12, align 8
  %87 = getelementptr inbounds %struct.hl_userptr, %struct.hl_userptr* %86, i32 0, i32 2
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = call i64 @goya_get_dma_desc_list_size(%struct.hl_device* %85, %struct.TYPE_4__* %88)
  %90 = load %struct.hl_cs_parser*, %struct.hl_cs_parser** %8, align 8
  %91 = getelementptr inbounds %struct.hl_cs_parser, %struct.hl_cs_parser* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %93, %89
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %91, align 4
  store i32 0, i32* %6, align 4
  br label %104

96:                                               ; preds = %73
  %97 = load %struct.hl_device*, %struct.hl_device** %7, align 8
  %98 = load %struct.hl_userptr*, %struct.hl_userptr** %12, align 8
  %99 = call i32 @hl_unpin_host_memory(%struct.hl_device* %97, %struct.hl_userptr* %98)
  br label %100

100:                                              ; preds = %96, %45
  %101 = load %struct.hl_userptr*, %struct.hl_userptr** %12, align 8
  %102 = call i32 @kfree(%struct.hl_userptr* %101)
  %103 = load i32, i32* %13, align 4
  store i32 %103, i32* %6, align 4
  br label %104

104:                                              ; preds = %100, %84, %31
  %105 = load i32, i32* %6, align 4
  ret i32 %105
}

declare dso_local i64 @hl_userptr_is_pinned(%struct.hl_device*, i32, i32, i32, %struct.hl_userptr**) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local %struct.hl_userptr* @kzalloc(i32, i32) #1

declare dso_local i32 @hl_pin_host_memory(%struct.hl_device*, i32, i32, %struct.hl_userptr*) #1

declare dso_local i32 @list_add_tail(i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i64 @goya_get_dma_desc_list_size(%struct.hl_device*, %struct.TYPE_4__*) #1

declare dso_local i32 @hl_unpin_host_memory(%struct.hl_device*, %struct.hl_userptr*) #1

declare dso_local i32 @kfree(%struct.hl_userptr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
