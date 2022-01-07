; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hnae.c_hnae_reinit_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hnae.c_hnae_reinit_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae_handle = type { i32, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { {}* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hnae_reinit_handle(%struct.hnae_handle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hnae_handle*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hnae_handle* %0, %struct.hnae_handle** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %22, %1
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.hnae_handle*, %struct.hnae_handle** %3, align 8
  %10 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %25

13:                                               ; preds = %7
  %14 = load %struct.hnae_handle*, %struct.hnae_handle** %3, align 8
  %15 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @hnae_fini_queue(i32 %20)
  br label %22

22:                                               ; preds = %13
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %4, align 4
  br label %7

25:                                               ; preds = %7
  %26 = load %struct.hnae_handle*, %struct.hnae_handle** %3, align 8
  %27 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %26, i32 0, i32 2
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = bitcast {}** %31 to i32 (%struct.hnae_handle*)**
  %33 = load i32 (%struct.hnae_handle*)*, i32 (%struct.hnae_handle*)** %32, align 8
  %34 = icmp ne i32 (%struct.hnae_handle*)* %33, null
  br i1 %34, label %35, label %46

35:                                               ; preds = %25
  %36 = load %struct.hnae_handle*, %struct.hnae_handle** %3, align 8
  %37 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %36, i32 0, i32 2
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = bitcast {}** %41 to i32 (%struct.hnae_handle*)**
  %43 = load i32 (%struct.hnae_handle*)*, i32 (%struct.hnae_handle*)** %42, align 8
  %44 = load %struct.hnae_handle*, %struct.hnae_handle** %3, align 8
  %45 = call i32 %43(%struct.hnae_handle* %44)
  br label %46

46:                                               ; preds = %35, %25
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %70, %46
  %48 = load i32, i32* %4, align 4
  %49 = load %struct.hnae_handle*, %struct.hnae_handle** %3, align 8
  %50 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %73

53:                                               ; preds = %47
  %54 = load %struct.hnae_handle*, %struct.hnae_handle** %3, align 8
  %55 = load %struct.hnae_handle*, %struct.hnae_handle** %3, align 8
  %56 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.hnae_handle*, %struct.hnae_handle** %3, align 8
  %63 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %62, i32 0, i32 2
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = call i32 @hnae_init_queue(%struct.hnae_handle* %54, i32 %61, %struct.TYPE_4__* %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %53
  br label %74

69:                                               ; preds = %53
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %4, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %4, align 4
  br label %47

73:                                               ; preds = %47
  store i32 0, i32* %2, align 4
  br label %94

74:                                               ; preds = %68
  %75 = load i32, i32* %4, align 4
  %76 = sub nsw i32 %75, 1
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %89, %74
  %78 = load i32, i32* %5, align 4
  %79 = icmp sge i32 %78, 0
  br i1 %79, label %80, label %92

80:                                               ; preds = %77
  %81 = load %struct.hnae_handle*, %struct.hnae_handle** %3, align 8
  %82 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %5, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @hnae_fini_queue(i32 %87)
  br label %89

89:                                               ; preds = %80
  %90 = load i32, i32* %5, align 4
  %91 = add nsw i32 %90, -1
  store i32 %91, i32* %5, align 4
  br label %77

92:                                               ; preds = %77
  %93 = load i32, i32* %6, align 4
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %92, %73
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i32 @hnae_fini_queue(i32) #1

declare dso_local i32 @hnae_init_queue(%struct.hnae_handle*, i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
