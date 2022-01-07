; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ioctl.c_v4l_print_query_ext_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ioctl.c_v4l_print_query_ext_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_query_ext_ctrl = type { i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [144 x i8] c"id=0x%x, type=%d, name=%.*s, min/max=%lld/%lld, step=%lld, default=%lld, flags=0x%08x, elem_size=%u, elems=%u, nr_of_dims=%u, dims=%u,%u,%u,%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @v4l_print_query_ext_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @v4l_print_query_ext_ctrl(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_query_ext_ctrl*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.v4l2_query_ext_ctrl*
  store %struct.v4l2_query_ext_ctrl* %7, %struct.v4l2_query_ext_ctrl** %5, align 8
  %8 = load %struct.v4l2_query_ext_ctrl*, %struct.v4l2_query_ext_ctrl** %5, align 8
  %9 = getelementptr inbounds %struct.v4l2_query_ext_ctrl, %struct.v4l2_query_ext_ctrl* %8, i32 0, i32 11
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.v4l2_query_ext_ctrl*, %struct.v4l2_query_ext_ctrl** %5, align 8
  %12 = getelementptr inbounds %struct.v4l2_query_ext_ctrl, %struct.v4l2_query_ext_ctrl* %11, i32 0, i32 10
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.v4l2_query_ext_ctrl*, %struct.v4l2_query_ext_ctrl** %5, align 8
  %15 = getelementptr inbounds %struct.v4l2_query_ext_ctrl, %struct.v4l2_query_ext_ctrl* %14, i32 0, i32 9
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.v4l2_query_ext_ctrl*, %struct.v4l2_query_ext_ctrl** %5, align 8
  %18 = getelementptr inbounds %struct.v4l2_query_ext_ctrl, %struct.v4l2_query_ext_ctrl* %17, i32 0, i32 8
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.v4l2_query_ext_ctrl*, %struct.v4l2_query_ext_ctrl** %5, align 8
  %21 = getelementptr inbounds %struct.v4l2_query_ext_ctrl, %struct.v4l2_query_ext_ctrl* %20, i32 0, i32 7
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.v4l2_query_ext_ctrl*, %struct.v4l2_query_ext_ctrl** %5, align 8
  %24 = getelementptr inbounds %struct.v4l2_query_ext_ctrl, %struct.v4l2_query_ext_ctrl* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.v4l2_query_ext_ctrl*, %struct.v4l2_query_ext_ctrl** %5, align 8
  %27 = getelementptr inbounds %struct.v4l2_query_ext_ctrl, %struct.v4l2_query_ext_ctrl* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.v4l2_query_ext_ctrl*, %struct.v4l2_query_ext_ctrl** %5, align 8
  %30 = getelementptr inbounds %struct.v4l2_query_ext_ctrl, %struct.v4l2_query_ext_ctrl* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.v4l2_query_ext_ctrl*, %struct.v4l2_query_ext_ctrl** %5, align 8
  %33 = getelementptr inbounds %struct.v4l2_query_ext_ctrl, %struct.v4l2_query_ext_ctrl* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.v4l2_query_ext_ctrl*, %struct.v4l2_query_ext_ctrl** %5, align 8
  %36 = getelementptr inbounds %struct.v4l2_query_ext_ctrl, %struct.v4l2_query_ext_ctrl* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.v4l2_query_ext_ctrl*, %struct.v4l2_query_ext_ctrl** %5, align 8
  %39 = getelementptr inbounds %struct.v4l2_query_ext_ctrl, %struct.v4l2_query_ext_ctrl* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.v4l2_query_ext_ctrl*, %struct.v4l2_query_ext_ctrl** %5, align 8
  %42 = getelementptr inbounds %struct.v4l2_query_ext_ctrl, %struct.v4l2_query_ext_ctrl* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.v4l2_query_ext_ctrl*, %struct.v4l2_query_ext_ctrl** %5, align 8
  %47 = getelementptr inbounds %struct.v4l2_query_ext_ctrl, %struct.v4l2_query_ext_ctrl* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.v4l2_query_ext_ctrl*, %struct.v4l2_query_ext_ctrl** %5, align 8
  %52 = getelementptr inbounds %struct.v4l2_query_ext_ctrl, %struct.v4l2_query_ext_ctrl* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.v4l2_query_ext_ctrl*, %struct.v4l2_query_ext_ctrl** %5, align 8
  %57 = getelementptr inbounds %struct.v4l2_query_ext_ctrl, %struct.v4l2_query_ext_ctrl* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 3
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @pr_cont(i8* getelementptr inbounds ([144 x i8], [144 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %13, i32 4, i32 %16, i32 %19, i32 %22, i32 %25, i32 %28, i32 %31, i32 %34, i32 %37, i32 %40, i32 %45, i32 %50, i32 %55, i32 %60)
  ret void
}

declare dso_local i32 @pr_cont(i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
