; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/appletalk/extr_ltpc.c_do_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/appletalk/extr_ltpc.c_do_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i8*, i8* }
%struct.net_device = type { i32 }

@qels = common dso_local global %struct.TYPE_3__* null, align 8
@mailbox = common dso_local global i32* null, align 8
@mboxinuse = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [31 x i8] c"ltpc: could not allocate mbox\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*, i32, i8*, i32)* @do_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_write(%struct.net_device* %0, i8* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = call i32 (...) @getmbox()
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* %12, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %70

17:                                               ; preds = %5
  %18 = load i8*, i8** %8, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** @qels, align 8
  %20 = load i32, i32* %12, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 5
  store i8* %18, i8** %23, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** @qels, align 8
  %26 = load i32, i32* %12, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i32 %24, i32* %29, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** @qels, align 8
  %32 = load i32, i32* %12, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 4
  store i8* %30, i8** %35, align 8
  %36 = load i32, i32* %11, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** @qels, align 8
  %38 = load i32, i32* %12, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  store i32 %36, i32* %41, align 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** @qels, align 8
  %43 = load i32, i32* %12, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  store i32 1, i32* %46, align 8
  %47 = load i32, i32* %12, align 4
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** @qels, align 8
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 3
  store i32 %47, i32* %52, align 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** @qels, align 8
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 %55
  %57 = call i32 @enQ(%struct.TYPE_3__* %56)
  %58 = load %struct.net_device*, %struct.net_device** %7, align 8
  %59 = call i32 @idle(%struct.net_device* %58)
  %60 = load i32*, i32** @mailbox, align 8
  %61 = load i32, i32* %12, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %13, align 4
  %65 = load i64*, i64** @mboxinuse, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  store i64 0, i64* %68, align 8
  %69 = load i32, i32* %13, align 4
  store i32 %69, i32* %6, align 4
  br label %72

70:                                               ; preds = %5
  %71 = call i32 @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %72

72:                                               ; preds = %70, %17
  %73 = load i32, i32* %6, align 4
  ret i32 %73
}

declare dso_local i32 @getmbox(...) #1

declare dso_local i32 @enQ(%struct.TYPE_3__*) #1

declare dso_local i32 @idle(%struct.net_device*) #1

declare dso_local i32 @printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
