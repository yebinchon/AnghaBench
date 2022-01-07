; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_r820t.c_r820t_compre_step.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_r820t.c_r820t_compre_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r820t_priv = type { i32 }
%struct.r820t_sect_type = type { i32, i32, i32 }

@IMR_TRIAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r820t_priv*, %struct.r820t_sect_type*, i32)* @r820t_compre_step to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r820t_compre_step(%struct.r820t_priv* %0, %struct.r820t_sect_type* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.r820t_priv*, align 8
  %6 = alloca %struct.r820t_sect_type*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.r820t_sect_type, align 4
  store %struct.r820t_priv* %0, %struct.r820t_priv** %5, align 8
  store %struct.r820t_sect_type* %1, %struct.r820t_sect_type** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.r820t_sect_type*, %struct.r820t_sect_type** %6, align 8
  %11 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %10, i64 0
  %12 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %9, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = load %struct.r820t_sect_type*, %struct.r820t_sect_type** %6, align 8
  %16 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %15, i64 0
  %17 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %9, i32 0, i32 1
  store i32 %18, i32* %19, align 4
  br label %20

20:                                               ; preds = %97, %3
  %21 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %9, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 31
  %24 = load i32, i32* @IMR_TRIAL, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %9, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 31
  %30 = load i32, i32* @IMR_TRIAL, align 4
  %31 = icmp slt i32 %29, %30
  br label %32

32:                                               ; preds = %26, %20
  %33 = phi i1 [ false, %20 ], [ %31, %26 ]
  br i1 %33, label %34, label %98

34:                                               ; preds = %32
  %35 = load i32, i32* %7, align 4
  %36 = icmp eq i32 %35, 8
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %9, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4
  br label %45

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %9, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %41, %37
  %46 = load %struct.r820t_priv*, %struct.r820t_priv** %5, align 8
  %47 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %9, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @r820t_write_reg(%struct.r820t_priv* %46, i32 8, i32 %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %4, align 4
  br label %99

54:                                               ; preds = %45
  %55 = load %struct.r820t_priv*, %struct.r820t_priv** %5, align 8
  %56 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %9, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @r820t_write_reg(%struct.r820t_priv* %55, i32 9, i32 %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %4, align 4
  br label %99

63:                                               ; preds = %54
  %64 = load %struct.r820t_priv*, %struct.r820t_priv** %5, align 8
  %65 = call i32 @r820t_multi_read(%struct.r820t_priv* %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %4, align 4
  br label %99

70:                                               ; preds = %63
  %71 = load i32, i32* %8, align 4
  %72 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %9, i32 0, i32 2
  store i32 %71, i32* %72, align 4
  %73 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %9, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.r820t_sect_type*, %struct.r820t_sect_type** %6, align 8
  %76 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %75, i64 0
  %77 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = icmp sle i32 %74, %78
  br i1 %79, label %80, label %96

80:                                               ; preds = %70
  %81 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %9, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.r820t_sect_type*, %struct.r820t_sect_type** %6, align 8
  %84 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %83, i64 0
  %85 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %84, i32 0, i32 1
  store i32 %82, i32* %85, align 4
  %86 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %9, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.r820t_sect_type*, %struct.r820t_sect_type** %6, align 8
  %89 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %88, i64 0
  %90 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %89, i32 0, i32 0
  store i32 %87, i32* %90, align 4
  %91 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %9, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.r820t_sect_type*, %struct.r820t_sect_type** %6, align 8
  %94 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %93, i64 0
  %95 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %94, i32 0, i32 2
  store i32 %92, i32* %95, align 4
  br label %97

96:                                               ; preds = %70
  store i32 0, i32* %4, align 4
  br label %99

97:                                               ; preds = %80
  br label %20

98:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %99

99:                                               ; preds = %98, %96, %68, %61, %52
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i32 @r820t_write_reg(%struct.r820t_priv*, i32, i32) #1

declare dso_local i32 @r820t_multi_read(%struct.r820t_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
