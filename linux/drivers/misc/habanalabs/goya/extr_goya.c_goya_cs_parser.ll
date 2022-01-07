; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_cs_parser.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_cs_parser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { %struct.goya_device* }
%struct.goya_device = type { i32 }
%struct.hl_cs_parser = type { i32 }

@HW_CAP_MMU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @goya_cs_parser(%struct.hl_device* %0, %struct.hl_cs_parser* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hl_device*, align 8
  %5 = alloca %struct.hl_cs_parser*, align 8
  %6 = alloca %struct.goya_device*, align 8
  store %struct.hl_device* %0, %struct.hl_device** %4, align 8
  store %struct.hl_cs_parser* %1, %struct.hl_cs_parser** %5, align 8
  %7 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %8 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %7, i32 0, i32 0
  %9 = load %struct.goya_device*, %struct.goya_device** %8, align 8
  store %struct.goya_device* %9, %struct.goya_device** %6, align 8
  %10 = load %struct.hl_cs_parser*, %struct.hl_cs_parser** %5, align 8
  %11 = getelementptr inbounds %struct.hl_cs_parser, %struct.hl_cs_parser* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %16 = load %struct.hl_cs_parser*, %struct.hl_cs_parser** %5, align 8
  %17 = call i32 @goya_parse_cb_no_ext_queue(%struct.hl_device* %15, %struct.hl_cs_parser* %16)
  store i32 %17, i32* %3, align 4
  br label %33

18:                                               ; preds = %2
  %19 = load %struct.goya_device*, %struct.goya_device** %6, align 8
  %20 = getelementptr inbounds %struct.goya_device, %struct.goya_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @HW_CAP_MMU, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %27 = load %struct.hl_cs_parser*, %struct.hl_cs_parser** %5, align 8
  %28 = call i32 @goya_parse_cb_mmu(%struct.hl_device* %26, %struct.hl_cs_parser* %27)
  store i32 %28, i32* %3, align 4
  br label %33

29:                                               ; preds = %18
  %30 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %31 = load %struct.hl_cs_parser*, %struct.hl_cs_parser** %5, align 8
  %32 = call i32 @goya_parse_cb_no_mmu(%struct.hl_device* %30, %struct.hl_cs_parser* %31)
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %29, %25, %14
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @goya_parse_cb_no_ext_queue(%struct.hl_device*, %struct.hl_cs_parser*) #1

declare dso_local i32 @goya_parse_cb_mmu(%struct.hl_device*, %struct.hl_cs_parser*) #1

declare dso_local i32 @goya_parse_cb_no_mmu(%struct.hl_device*, %struct.hl_cs_parser*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
