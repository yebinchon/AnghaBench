; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dst.c_dst_set_bandwidth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dst.c_dst_set_bandwidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_state = type { i32, i64, i32, i32* }

@DST_TYPE_IS_TERR = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@DST_TYPE_HAS_CA = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dst_state*, i32)* @dst_set_bandwidth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dst_set_bandwidth(%struct.dst_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dst_state*, align 8
  %5 = alloca i32, align 4
  store %struct.dst_state* %0, %struct.dst_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %8 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 8
  %9 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %10 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @DST_TYPE_IS_TERR, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EOPNOTSUPP, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %89

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  switch i32 %18, label %85 [
    i32 6000000, label %19
    i32 7000000, label %41
    i32 8000000, label %63
  ]

19:                                               ; preds = %17
  %20 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %21 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @DST_TYPE_HAS_CA, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %28 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %27, i32 0, i32 3
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 7
  store i32 6, i32* %30, align 4
  br label %40

31:                                               ; preds = %19
  %32 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %33 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %32, i32 0, i32 3
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 6
  store i32 6, i32* %35, align 4
  %36 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %37 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %36, i32 0, i32 3
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 7
  store i32 0, i32* %39, align 4
  br label %40

40:                                               ; preds = %31, %26
  br label %88

41:                                               ; preds = %17
  %42 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %43 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @DST_TYPE_HAS_CA, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %41
  %49 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %50 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 7
  store i32 7, i32* %52, align 4
  br label %62

53:                                               ; preds = %41
  %54 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %55 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %54, i32 0, i32 3
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 6
  store i32 7, i32* %57, align 4
  %58 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %59 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %58, i32 0, i32 3
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 7
  store i32 0, i32* %61, align 4
  br label %62

62:                                               ; preds = %53, %48
  br label %88

63:                                               ; preds = %17
  %64 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %65 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @DST_TYPE_HAS_CA, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %63
  %71 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %72 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %71, i32 0, i32 3
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 7
  store i32 8, i32* %74, align 4
  br label %84

75:                                               ; preds = %63
  %76 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %77 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %76, i32 0, i32 3
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 6
  store i32 8, i32* %79, align 4
  %80 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %81 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %80, i32 0, i32 3
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 7
  store i32 0, i32* %83, align 4
  br label %84

84:                                               ; preds = %75, %70
  br label %88

85:                                               ; preds = %17
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %89

88:                                               ; preds = %84, %62, %40
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %88, %85, %14
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
