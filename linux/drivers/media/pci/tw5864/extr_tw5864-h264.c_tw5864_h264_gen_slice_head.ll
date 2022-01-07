; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/tw5864/extr_tw5864-h264.c_tw5864_h264_gen_slice_head.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/tw5864/extr_tw5864-h264.c_tw5864_h264_gen_slice_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bs = type { i32, i32* }

@MAX_GOP_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i32, i32, i32*, i32*)* @tw5864_h264_gen_slice_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tw5864_h264_gen_slice_head(i32* %0, i64 %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.bs, align 8
  %14 = alloca %struct.bs*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %16 = load i32, i32* %10, align 4
  %17 = icmp eq i32 %16, 0
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %15, align 4
  store %struct.bs* %13, %struct.bs** %14, align 8
  %19 = load %struct.bs*, %struct.bs** %14, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = load i64, i64* %8, align 8
  %22 = call i32 @bs_init(%struct.bs* %19, i32* %20, i64 %21)
  %23 = load %struct.bs*, %struct.bs** %14, align 8
  %24 = call i32 @bs_write_ue(%struct.bs* %23, i32 0)
  %25 = load %struct.bs*, %struct.bs** %14, align 8
  %26 = load i32, i32* %15, align 4
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 2, i32 5
  %30 = call i32 @bs_write_ue(%struct.bs* %25, i32 %29)
  %31 = load %struct.bs*, %struct.bs** %14, align 8
  %32 = call i32 @bs_write_ue(%struct.bs* %31, i32 0)
  %33 = load %struct.bs*, %struct.bs** %14, align 8
  %34 = load i32, i32* @MAX_GOP_SIZE, align 4
  %35 = call i32 @ilog2(i32 %34)
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @bs_write(%struct.bs* %33, i32 %35, i32 %36)
  %38 = load i32, i32* %15, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %6
  %41 = load %struct.bs*, %struct.bs** %14, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @bs_write_ue(%struct.bs* %41, i32 %42)
  br label %44

44:                                               ; preds = %40, %6
  %45 = load %struct.bs*, %struct.bs** %14, align 8
  %46 = load i32, i32* @MAX_GOP_SIZE, align 4
  %47 = call i32 @ilog2(i32 %46)
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @bs_write(%struct.bs* %45, i32 %47, i32 %48)
  %50 = load i32, i32* %15, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %44
  %53 = load %struct.bs*, %struct.bs** %14, align 8
  %54 = call i32 @bs_write1(%struct.bs* %53, i32 0)
  %55 = load %struct.bs*, %struct.bs** %14, align 8
  %56 = call i32 @bs_write1(%struct.bs* %55, i32 0)
  br label %64

57:                                               ; preds = %44
  %58 = load %struct.bs*, %struct.bs** %14, align 8
  %59 = call i32 @bs_write1(%struct.bs* %58, i32 0)
  %60 = load %struct.bs*, %struct.bs** %14, align 8
  %61 = call i32 @bs_write1(%struct.bs* %60, i32 0)
  %62 = load %struct.bs*, %struct.bs** %14, align 8
  %63 = call i32 @bs_write1(%struct.bs* %62, i32 0)
  br label %64

64:                                               ; preds = %57, %52
  %65 = load %struct.bs*, %struct.bs** %14, align 8
  %66 = call i32 @bs_write_se(%struct.bs* %65, i32 0)
  %67 = load %struct.bs*, %struct.bs** %14, align 8
  %68 = getelementptr inbounds %struct.bs, %struct.bs* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 8
  br i1 %70, label %71, label %87

71:                                               ; preds = %64
  %72 = load %struct.bs*, %struct.bs** %14, align 8
  %73 = getelementptr inbounds %struct.bs, %struct.bs* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.bs*, %struct.bs** %14, align 8
  %78 = getelementptr inbounds %struct.bs, %struct.bs* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = shl i32 %76, %79
  %81 = load i32*, i32** %12, align 8
  store i32 %80, i32* %81, align 4
  %82 = load %struct.bs*, %struct.bs** %14, align 8
  %83 = getelementptr inbounds %struct.bs, %struct.bs* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = sub nsw i32 8, %84
  %86 = load i32*, i32** %11, align 8
  store i32 %85, i32* %86, align 4
  br label %90

87:                                               ; preds = %64
  %88 = load i32*, i32** %12, align 8
  store i32 0, i32* %88, align 4
  %89 = load i32*, i32** %11, align 8
  store i32 0, i32* %89, align 4
  br label %90

90:                                               ; preds = %87, %71
  %91 = load %struct.bs*, %struct.bs** %14, align 8
  %92 = call i32 @bs_len(%struct.bs* %91)
  ret i32 %92
}

declare dso_local i32 @bs_init(%struct.bs*, i32*, i64) #1

declare dso_local i32 @bs_write_ue(%struct.bs*, i32) #1

declare dso_local i32 @bs_write(%struct.bs*, i32, i32) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @bs_write1(%struct.bs*, i32) #1

declare dso_local i32 @bs_write_se(%struct.bs*, i32) #1

declare dso_local i32 @bs_len(%struct.bs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
