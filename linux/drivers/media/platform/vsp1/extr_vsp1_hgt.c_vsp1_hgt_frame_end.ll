; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_hgt.c_vsp1_hgt_frame_end.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_hgt.c_vsp1_hgt_frame_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsp1_entity = type { i32 }
%struct.vsp1_hgt = type { i32 }
%struct.vsp1_histogram_buffer = type { i32* }

@VI6_HGT_MAXMIN = common dso_local global i32 0, align 4
@VI6_HGT_SUM = common dso_local global i32 0, align 4
@HGT_DATA_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vsp1_hgt_frame_end(%struct.vsp1_entity* %0) #0 {
  %2 = alloca %struct.vsp1_entity*, align 8
  %3 = alloca %struct.vsp1_hgt*, align 8
  %4 = alloca %struct.vsp1_histogram_buffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.vsp1_entity* %0, %struct.vsp1_entity** %2, align 8
  %8 = load %struct.vsp1_entity*, %struct.vsp1_entity** %2, align 8
  %9 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %8, i32 0, i32 0
  %10 = call %struct.vsp1_hgt* @to_hgt(i32* %9)
  store %struct.vsp1_hgt* %10, %struct.vsp1_hgt** %3, align 8
  %11 = load %struct.vsp1_hgt*, %struct.vsp1_hgt** %3, align 8
  %12 = getelementptr inbounds %struct.vsp1_hgt, %struct.vsp1_hgt* %11, i32 0, i32 0
  %13 = call %struct.vsp1_histogram_buffer* @vsp1_histogram_buffer_get(i32* %12)
  store %struct.vsp1_histogram_buffer* %13, %struct.vsp1_histogram_buffer** %4, align 8
  %14 = load %struct.vsp1_histogram_buffer*, %struct.vsp1_histogram_buffer** %4, align 8
  %15 = icmp ne %struct.vsp1_histogram_buffer* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %62

17:                                               ; preds = %1
  %18 = load %struct.vsp1_histogram_buffer*, %struct.vsp1_histogram_buffer** %4, align 8
  %19 = getelementptr inbounds %struct.vsp1_histogram_buffer, %struct.vsp1_histogram_buffer* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %7, align 8
  %21 = load %struct.vsp1_hgt*, %struct.vsp1_hgt** %3, align 8
  %22 = load i32, i32* @VI6_HGT_MAXMIN, align 4
  %23 = call i8* @vsp1_hgt_read(%struct.vsp1_hgt* %21, i32 %22)
  %24 = ptrtoint i8* %23 to i32
  %25 = load i32*, i32** %7, align 8
  %26 = getelementptr inbounds i32, i32* %25, i32 1
  store i32* %26, i32** %7, align 8
  store i32 %24, i32* %25, align 4
  %27 = load %struct.vsp1_hgt*, %struct.vsp1_hgt** %3, align 8
  %28 = load i32, i32* @VI6_HGT_SUM, align 4
  %29 = call i8* @vsp1_hgt_read(%struct.vsp1_hgt* %27, i32 %28)
  %30 = ptrtoint i8* %29 to i32
  %31 = load i32*, i32** %7, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %32, i32** %7, align 8
  store i32 %30, i32* %31, align 4
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %53, %17
  %34 = load i32, i32* %5, align 4
  %35 = icmp ult i32 %34, 6
  br i1 %35, label %36, label %56

36:                                               ; preds = %33
  store i32 0, i32* %6, align 4
  br label %37

37:                                               ; preds = %49, %36
  %38 = load i32, i32* %6, align 4
  %39 = icmp ult i32 %38, 32
  br i1 %39, label %40, label %52

40:                                               ; preds = %37
  %41 = load %struct.vsp1_hgt*, %struct.vsp1_hgt** %3, align 8
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @VI6_HGT_HISTO(i32 %42, i32 %43)
  %45 = call i8* @vsp1_hgt_read(%struct.vsp1_hgt* %41, i32 %44)
  %46 = ptrtoint i8* %45 to i32
  %47 = load i32*, i32** %7, align 8
  %48 = getelementptr inbounds i32, i32* %47, i32 1
  store i32* %48, i32** %7, align 8
  store i32 %46, i32* %47, align 4
  br label %49

49:                                               ; preds = %40
  %50 = load i32, i32* %6, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %37

52:                                               ; preds = %37
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %5, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %33

56:                                               ; preds = %33
  %57 = load %struct.vsp1_hgt*, %struct.vsp1_hgt** %3, align 8
  %58 = getelementptr inbounds %struct.vsp1_hgt, %struct.vsp1_hgt* %57, i32 0, i32 0
  %59 = load %struct.vsp1_histogram_buffer*, %struct.vsp1_histogram_buffer** %4, align 8
  %60 = load i32, i32* @HGT_DATA_SIZE, align 4
  %61 = call i32 @vsp1_histogram_buffer_complete(i32* %58, %struct.vsp1_histogram_buffer* %59, i32 %60)
  br label %62

62:                                               ; preds = %56, %16
  ret void
}

declare dso_local %struct.vsp1_hgt* @to_hgt(i32*) #1

declare dso_local %struct.vsp1_histogram_buffer* @vsp1_histogram_buffer_get(i32*) #1

declare dso_local i8* @vsp1_hgt_read(%struct.vsp1_hgt*, i32) #1

declare dso_local i32 @VI6_HGT_HISTO(i32, i32) #1

declare dso_local i32 @vsp1_histogram_buffer_complete(i32*, %struct.vsp1_histogram_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
