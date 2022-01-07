; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_dl.c_vsp1_dl_body_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_dl.c_vsp1_dl_body_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsp1_dl_body = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i8* }

@.str = private unnamed_addr constant [27 x i8] c"DLB size exceeded (max %u)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vsp1_dl_body_write(%struct.vsp1_dl_body* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.vsp1_dl_body*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.vsp1_dl_body* %0, %struct.vsp1_dl_body** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %4, align 8
  %8 = getelementptr inbounds %struct.vsp1_dl_body, %struct.vsp1_dl_body* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %4, align 8
  %11 = getelementptr inbounds %struct.vsp1_dl_body, %struct.vsp1_dl_body* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp uge i64 %9, %12
  %14 = zext i1 %13 to i32
  %15 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %4, align 8
  %16 = getelementptr inbounds %struct.vsp1_dl_body, %struct.vsp1_dl_body* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = call i64 @WARN_ONCE(i32 %14, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %44

21:                                               ; preds = %3
  %22 = load i8*, i8** %5, align 8
  %23 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %4, align 8
  %24 = getelementptr inbounds %struct.vsp1_dl_body, %struct.vsp1_dl_body* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %4, align 8
  %27 = getelementptr inbounds %struct.vsp1_dl_body, %struct.vsp1_dl_body* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  store i8* %22, i8** %30, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %4, align 8
  %33 = getelementptr inbounds %struct.vsp1_dl_body, %struct.vsp1_dl_body* %32, i32 0, i32 2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %4, align 8
  %36 = getelementptr inbounds %struct.vsp1_dl_body, %struct.vsp1_dl_body* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i8* %31, i8** %39, align 8
  %40 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %4, align 8
  %41 = getelementptr inbounds %struct.vsp1_dl_body, %struct.vsp1_dl_body* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %41, align 8
  br label %44

44:                                               ; preds = %21, %20
  ret void
}

declare dso_local i64 @WARN_ONCE(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
