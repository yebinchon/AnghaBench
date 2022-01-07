; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/slip/extr_slip.c_sl_alloc_bufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/slip/extr_slip.c_sl_alloc_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slip = type { i32, i64, i32, i64, i64, i32, i32, i32, i32, i64, i64, i32* }

@ENOBUFS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.slip*, i32)* @sl_alloc_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sl_alloc_bufs(%struct.slip* %0, i32 %1) #0 {
  %3 = alloca %struct.slip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.slip* %0, %struct.slip** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* @ENOBUFS, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %5, align 4
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  %11 = load i32, i32* %4, align 4
  %12 = mul nsw i32 %11, 2
  %13 = sext i32 %12 to i64
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp ult i64 %14, 1152
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i64 1152, i64* %6, align 8
  br label %17

17:                                               ; preds = %16, %2
  %18 = load i64, i64* %6, align 8
  %19 = add i64 %18, 4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i8* @kmalloc(i64 %19, i32 %20)
  store i8* %21, i8** %7, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %69

25:                                               ; preds = %17
  %26 = load i64, i64* %6, align 8
  %27 = add i64 %26, 4
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i8* @kmalloc(i64 %27, i32 %28)
  store i8* %29, i8** %8, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %69

33:                                               ; preds = %25
  %34 = load %struct.slip*, %struct.slip** %3, align 8
  %35 = getelementptr inbounds %struct.slip, %struct.slip* %34, i32 0, i32 2
  %36 = call i32 @spin_lock_bh(i32* %35)
  %37 = load %struct.slip*, %struct.slip** %3, align 8
  %38 = getelementptr inbounds %struct.slip, %struct.slip* %37, i32 0, i32 11
  %39 = load i32*, i32** %38, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %33
  %42 = load %struct.slip*, %struct.slip** %3, align 8
  %43 = getelementptr inbounds %struct.slip, %struct.slip* %42, i32 0, i32 2
  %44 = call i32 @spin_unlock_bh(i32* %43)
  %45 = load i32, i32* @ENODEV, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %69

47:                                               ; preds = %33
  %48 = load i32, i32* %4, align 4
  %49 = load %struct.slip*, %struct.slip** %3, align 8
  %50 = getelementptr inbounds %struct.slip, %struct.slip* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load i64, i64* %6, align 8
  %52 = load %struct.slip*, %struct.slip** %3, align 8
  %53 = getelementptr inbounds %struct.slip, %struct.slip* %52, i32 0, i32 1
  store i64 %51, i64* %53, align 8
  %54 = load %struct.slip*, %struct.slip** %3, align 8
  %55 = getelementptr inbounds %struct.slip, %struct.slip* %54, i32 0, i32 10
  store i64 0, i64* %55, align 8
  %56 = load %struct.slip*, %struct.slip** %3, align 8
  %57 = getelementptr inbounds %struct.slip, %struct.slip* %56, i32 0, i32 9
  store i64 0, i64* %57, align 8
  %58 = load %struct.slip*, %struct.slip** %3, align 8
  %59 = getelementptr inbounds %struct.slip, %struct.slip* %58, i32 0, i32 8
  %60 = load i8*, i8** %7, align 8
  %61 = call i8* @xchg(i32* %59, i8* %60)
  store i8* %61, i8** %7, align 8
  %62 = load %struct.slip*, %struct.slip** %3, align 8
  %63 = getelementptr inbounds %struct.slip, %struct.slip* %62, i32 0, i32 7
  %64 = load i8*, i8** %8, align 8
  %65 = call i8* @xchg(i32* %63, i8* %64)
  store i8* %65, i8** %8, align 8
  %66 = load %struct.slip*, %struct.slip** %3, align 8
  %67 = getelementptr inbounds %struct.slip, %struct.slip* %66, i32 0, i32 2
  %68 = call i32 @spin_unlock_bh(i32* %67)
  store i32 0, i32* %5, align 4
  br label %69

69:                                               ; preds = %47, %41, %32, %24
  %70 = load i8*, i8** %8, align 8
  %71 = call i32 @kfree(i8* %70)
  %72 = load i8*, i8** %7, align 8
  %73 = call i32 @kfree(i8* %72)
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i8* @xchg(i32*, i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
