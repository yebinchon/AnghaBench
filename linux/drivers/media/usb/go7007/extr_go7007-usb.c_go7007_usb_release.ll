; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_go7007-usb.c_go7007_usb_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_go7007-usb.c_go7007_usb_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.go7007 = type { %struct.go7007_usb* }
%struct.go7007_usb = type { %struct.urb**, %struct.urb**, %struct.urb* }
%struct.urb = type { %struct.go7007_usb* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.go7007*)* @go7007_usb_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @go7007_usb_release(%struct.go7007* %0) #0 {
  %2 = alloca %struct.go7007*, align 8
  %3 = alloca %struct.go7007_usb*, align 8
  %4 = alloca %struct.urb*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca i32, align 4
  store %struct.go7007* %0, %struct.go7007** %2, align 8
  %7 = load %struct.go7007*, %struct.go7007** %2, align 8
  %8 = getelementptr inbounds %struct.go7007, %struct.go7007* %7, i32 0, i32 0
  %9 = load %struct.go7007_usb*, %struct.go7007_usb** %8, align 8
  store %struct.go7007_usb* %9, %struct.go7007_usb** %3, align 8
  %10 = load %struct.go7007_usb*, %struct.go7007_usb** %3, align 8
  %11 = getelementptr inbounds %struct.go7007_usb, %struct.go7007_usb* %10, i32 0, i32 2
  %12 = load %struct.urb*, %struct.urb** %11, align 8
  %13 = icmp ne %struct.urb* %12, null
  br i1 %13, label %14, label %29

14:                                               ; preds = %1
  %15 = load %struct.go7007_usb*, %struct.go7007_usb** %3, align 8
  %16 = getelementptr inbounds %struct.go7007_usb, %struct.go7007_usb* %15, i32 0, i32 2
  %17 = load %struct.urb*, %struct.urb** %16, align 8
  %18 = call i32 @usb_kill_urb(%struct.urb* %17)
  %19 = load %struct.go7007_usb*, %struct.go7007_usb** %3, align 8
  %20 = getelementptr inbounds %struct.go7007_usb, %struct.go7007_usb* %19, i32 0, i32 2
  %21 = load %struct.urb*, %struct.urb** %20, align 8
  %22 = getelementptr inbounds %struct.urb, %struct.urb* %21, i32 0, i32 0
  %23 = load %struct.go7007_usb*, %struct.go7007_usb** %22, align 8
  %24 = call i32 @kfree(%struct.go7007_usb* %23)
  %25 = load %struct.go7007_usb*, %struct.go7007_usb** %3, align 8
  %26 = getelementptr inbounds %struct.go7007_usb, %struct.go7007_usb* %25, i32 0, i32 2
  %27 = load %struct.urb*, %struct.urb** %26, align 8
  %28 = call i32 @usb_free_urb(%struct.urb* %27)
  br label %29

29:                                               ; preds = %14, %1
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %72, %29
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 8
  br i1 %32, label %33, label %75

33:                                               ; preds = %30
  %34 = load %struct.go7007_usb*, %struct.go7007_usb** %3, align 8
  %35 = getelementptr inbounds %struct.go7007_usb, %struct.go7007_usb* %34, i32 0, i32 1
  %36 = load %struct.urb**, %struct.urb*** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.urb*, %struct.urb** %36, i64 %38
  %40 = load %struct.urb*, %struct.urb** %39, align 8
  store %struct.urb* %40, %struct.urb** %4, align 8
  %41 = load %struct.urb*, %struct.urb** %4, align 8
  %42 = icmp ne %struct.urb* %41, null
  br i1 %42, label %43, label %52

43:                                               ; preds = %33
  %44 = load %struct.urb*, %struct.urb** %4, align 8
  %45 = call i32 @usb_kill_urb(%struct.urb* %44)
  %46 = load %struct.urb*, %struct.urb** %4, align 8
  %47 = getelementptr inbounds %struct.urb, %struct.urb* %46, i32 0, i32 0
  %48 = load %struct.go7007_usb*, %struct.go7007_usb** %47, align 8
  %49 = call i32 @kfree(%struct.go7007_usb* %48)
  %50 = load %struct.urb*, %struct.urb** %4, align 8
  %51 = call i32 @usb_free_urb(%struct.urb* %50)
  br label %52

52:                                               ; preds = %43, %33
  %53 = load %struct.go7007_usb*, %struct.go7007_usb** %3, align 8
  %54 = getelementptr inbounds %struct.go7007_usb, %struct.go7007_usb* %53, i32 0, i32 0
  %55 = load %struct.urb**, %struct.urb*** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.urb*, %struct.urb** %55, i64 %57
  %59 = load %struct.urb*, %struct.urb** %58, align 8
  store %struct.urb* %59, %struct.urb** %5, align 8
  %60 = load %struct.urb*, %struct.urb** %5, align 8
  %61 = icmp ne %struct.urb* %60, null
  br i1 %61, label %62, label %71

62:                                               ; preds = %52
  %63 = load %struct.urb*, %struct.urb** %5, align 8
  %64 = call i32 @usb_kill_urb(%struct.urb* %63)
  %65 = load %struct.urb*, %struct.urb** %5, align 8
  %66 = getelementptr inbounds %struct.urb, %struct.urb* %65, i32 0, i32 0
  %67 = load %struct.go7007_usb*, %struct.go7007_usb** %66, align 8
  %68 = call i32 @kfree(%struct.go7007_usb* %67)
  %69 = load %struct.urb*, %struct.urb** %5, align 8
  %70 = call i32 @usb_free_urb(%struct.urb* %69)
  br label %71

71:                                               ; preds = %62, %52
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %6, align 4
  br label %30

75:                                               ; preds = %30
  %76 = load %struct.go7007*, %struct.go7007** %2, align 8
  %77 = getelementptr inbounds %struct.go7007, %struct.go7007* %76, i32 0, i32 0
  %78 = load %struct.go7007_usb*, %struct.go7007_usb** %77, align 8
  %79 = call i32 @kfree(%struct.go7007_usb* %78)
  ret void
}

declare dso_local i32 @usb_kill_urb(%struct.urb*) #1

declare dso_local i32 @kfree(%struct.go7007_usb*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
