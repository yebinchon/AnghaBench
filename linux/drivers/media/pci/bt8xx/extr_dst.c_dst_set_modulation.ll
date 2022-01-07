; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dst.c_dst_set_modulation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dst.c_dst_set_modulation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_state = type { i64, i32, i32*, i32 }

@DST_TYPE_IS_CABLE = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"DCTNEW\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"DCT-CI\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dst_state*, i32)* @dst_set_modulation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dst_set_modulation(%struct.dst_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dst_state*, align 8
  %5 = alloca i32, align 4
  store %struct.dst_state* %0, %struct.dst_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %7 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @DST_TYPE_IS_CABLE, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @EOPNOTSUPP, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %68

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %17 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* %5, align 4
  switch i32 %18, label %64 [
    i32 135, label %19
    i32 133, label %24
    i32 132, label %29
    i32 136, label %34
    i32 134, label %39
    i32 130, label %63
    i32 131, label %63
    i32 128, label %63
    i32 129, label %63
  ]

19:                                               ; preds = %14
  %20 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %21 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 8
  store i32 16, i32* %23, align 4
  br label %67

24:                                               ; preds = %14
  %25 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %26 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 8
  store i32 32, i32* %28, align 4
  br label %67

29:                                               ; preds = %14
  %30 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %31 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 8
  store i32 64, i32* %33, align 4
  br label %67

34:                                               ; preds = %14
  %35 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %36 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 8
  store i32 128, i32* %38, align 4
  br label %67

39:                                               ; preds = %14
  %40 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %41 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @strncmp(i32 %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %39
  %46 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %47 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 8
  store i32 255, i32* %49, align 4
  br label %62

50:                                               ; preds = %39
  %51 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %52 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @strncmp(i32 %53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 6)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %50
  %57 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %58 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 8
  store i32 0, i32* %60, align 4
  br label %61

61:                                               ; preds = %56, %50
  br label %62

62:                                               ; preds = %61, %45
  br label %67

63:                                               ; preds = %14, %14, %14, %14
  br label %64

64:                                               ; preds = %14, %63
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %68

67:                                               ; preds = %62, %34, %29, %24, %19
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %67, %64, %11
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @strncmp(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
