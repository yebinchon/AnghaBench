; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dst_ca.c_handle_dst_tag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dst_ca.c_handle_dst_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_state = type { i32 }
%struct.ca_msg = type { i32* }

@DST_TYPE_HAS_SESSION = common dso_local global i32 0, align 4
@verbose = common dso_local global i32 0, align 4
@DST_CA_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c" Message too long ! *** Bailing Out *** !\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dst_state*, %struct.ca_msg*, %struct.ca_msg*, i32)* @handle_dst_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_dst_tag(%struct.dst_state* %0, %struct.ca_msg* %1, %struct.ca_msg* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dst_state*, align 8
  %7 = alloca %struct.ca_msg*, align 8
  %8 = alloca %struct.ca_msg*, align 8
  %9 = alloca i32, align 4
  store %struct.dst_state* %0, %struct.dst_state** %6, align 8
  store %struct.ca_msg* %1, %struct.ca_msg** %7, align 8
  store %struct.ca_msg* %2, %struct.ca_msg** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load %struct.dst_state*, %struct.dst_state** %6, align 8
  %11 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @DST_TYPE_HAS_SESSION, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %35

16:                                               ; preds = %4
  %17 = load %struct.ca_msg*, %struct.ca_msg** %7, align 8
  %18 = getelementptr inbounds %struct.ca_msg, %struct.ca_msg* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ca_msg*, %struct.ca_msg** %8, align 8
  %23 = getelementptr inbounds %struct.ca_msg, %struct.ca_msg* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 2
  store i32 %21, i32* %25, align 4
  %26 = load %struct.ca_msg*, %struct.ca_msg** %7, align 8
  %27 = getelementptr inbounds %struct.ca_msg, %struct.ca_msg* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ca_msg*, %struct.ca_msg** %8, align 8
  %32 = getelementptr inbounds %struct.ca_msg, %struct.ca_msg* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 3
  store i32 %30, i32* %34, align 4
  br label %88

35:                                               ; preds = %4
  %36 = load i32, i32* %9, align 4
  %37 = icmp sgt i32 %36, 247
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load i32, i32* @verbose, align 4
  %40 = load i32, i32* @DST_CA_ERROR, align 4
  %41 = call i32 @dprintk(i32 %39, i32 %40, i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @EIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %89

44:                                               ; preds = %35
  %45 = load i32, i32* %9, align 4
  %46 = and i32 %45, 255
  %47 = add nsw i32 %46, 7
  %48 = load %struct.ca_msg*, %struct.ca_msg** %8, align 8
  %49 = getelementptr inbounds %struct.ca_msg, %struct.ca_msg* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  store i32 %47, i32* %51, align 4
  %52 = load %struct.ca_msg*, %struct.ca_msg** %8, align 8
  %53 = getelementptr inbounds %struct.ca_msg, %struct.ca_msg* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  store i32 64, i32* %55, align 4
  %56 = load %struct.ca_msg*, %struct.ca_msg** %8, align 8
  %57 = getelementptr inbounds %struct.ca_msg, %struct.ca_msg* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 2
  store i32 3, i32* %59, align 4
  %60 = load %struct.ca_msg*, %struct.ca_msg** %8, align 8
  %61 = getelementptr inbounds %struct.ca_msg, %struct.ca_msg* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 3
  store i32 0, i32* %63, align 4
  %64 = load %struct.ca_msg*, %struct.ca_msg** %8, align 8
  %65 = getelementptr inbounds %struct.ca_msg, %struct.ca_msg* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 4
  store i32 3, i32* %67, align 4
  %68 = load i32, i32* %9, align 4
  %69 = and i32 %68, 255
  %70 = load %struct.ca_msg*, %struct.ca_msg** %8, align 8
  %71 = getelementptr inbounds %struct.ca_msg, %struct.ca_msg* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 5
  store i32 %69, i32* %73, align 4
  %74 = load %struct.ca_msg*, %struct.ca_msg** %8, align 8
  %75 = getelementptr inbounds %struct.ca_msg, %struct.ca_msg* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 6
  store i32 0, i32* %77, align 4
  %78 = load %struct.ca_msg*, %struct.ca_msg** %8, align 8
  %79 = getelementptr inbounds %struct.ca_msg, %struct.ca_msg* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 7
  %82 = load %struct.ca_msg*, %struct.ca_msg** %7, align 8
  %83 = getelementptr inbounds %struct.ca_msg, %struct.ca_msg* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 4
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @memcpy(i32* %81, i32* %85, i32 %86)
  br label %88

88:                                               ; preds = %44, %16
  store i32 0, i32* %5, align 4
  br label %89

89:                                               ; preds = %88, %38
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local i32 @dprintk(i32, i32, i32, i8*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
