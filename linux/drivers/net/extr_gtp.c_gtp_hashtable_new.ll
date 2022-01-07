; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_gtp.c_gtp_hashtable_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_gtp.c_gtp_hashtable_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gtp_dev = type { i32, i32*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gtp_dev*, i32)* @gtp_hashtable_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gtp_hashtable_new(%struct.gtp_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gtp_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.gtp_dev* %0, %struct.gtp_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call i8* @kmalloc_array(i32 %7, i32 4, i32 %8)
  %10 = bitcast i8* %9 to i32*
  %11 = load %struct.gtp_dev*, %struct.gtp_dev** %4, align 8
  %12 = getelementptr inbounds %struct.gtp_dev, %struct.gtp_dev* %11, i32 0, i32 1
  store i32* %10, i32** %12, align 8
  %13 = load %struct.gtp_dev*, %struct.gtp_dev** %4, align 8
  %14 = getelementptr inbounds %struct.gtp_dev, %struct.gtp_dev* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %66

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i8* @kmalloc_array(i32 %21, i32 4, i32 %22)
  %24 = bitcast i8* %23 to i32*
  %25 = load %struct.gtp_dev*, %struct.gtp_dev** %4, align 8
  %26 = getelementptr inbounds %struct.gtp_dev, %struct.gtp_dev* %25, i32 0, i32 2
  store i32* %24, i32** %26, align 8
  %27 = load %struct.gtp_dev*, %struct.gtp_dev** %4, align 8
  %28 = getelementptr inbounds %struct.gtp_dev, %struct.gtp_dev* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  br label %59

32:                                               ; preds = %20
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.gtp_dev*, %struct.gtp_dev** %4, align 8
  %35 = getelementptr inbounds %struct.gtp_dev, %struct.gtp_dev* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %55, %32
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %58

40:                                               ; preds = %36
  %41 = load %struct.gtp_dev*, %struct.gtp_dev** %4, align 8
  %42 = getelementptr inbounds %struct.gtp_dev, %struct.gtp_dev* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = call i32 @INIT_HLIST_HEAD(i32* %46)
  %48 = load %struct.gtp_dev*, %struct.gtp_dev** %4, align 8
  %49 = getelementptr inbounds %struct.gtp_dev, %struct.gtp_dev* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = call i32 @INIT_HLIST_HEAD(i32* %53)
  br label %55

55:                                               ; preds = %40
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %36

58:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %66

59:                                               ; preds = %31
  %60 = load %struct.gtp_dev*, %struct.gtp_dev** %4, align 8
  %61 = getelementptr inbounds %struct.gtp_dev, %struct.gtp_dev* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @kfree(i32* %62)
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %59, %58, %17
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i8* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @INIT_HLIST_HEAD(i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
