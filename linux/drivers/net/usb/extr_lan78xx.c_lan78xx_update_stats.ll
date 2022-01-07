; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_update_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_update_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan78xx_net = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.lan78xx_statstage = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lan78xx_net*)* @lan78xx_update_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lan78xx_update_stats(%struct.lan78xx_net* %0) #0 {
  %2 = alloca %struct.lan78xx_net*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.lan78xx_statstage, align 4
  store %struct.lan78xx_net* %0, %struct.lan78xx_net** %2, align 8
  %9 = load %struct.lan78xx_net*, %struct.lan78xx_net** %2, align 8
  %10 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @usb_autopm_get_interface(i32 %11)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %81

15:                                               ; preds = %1
  %16 = bitcast %struct.lan78xx_statstage* %8 to i64*
  store i64* %16, i64** %3, align 8
  %17 = load %struct.lan78xx_net*, %struct.lan78xx_net** %2, align 8
  %18 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 3
  %20 = bitcast i32* %19 to i64*
  store i64* %20, i64** %4, align 8
  %21 = load %struct.lan78xx_net*, %struct.lan78xx_net** %2, align 8
  %22 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %24 = bitcast i32* %23 to i64*
  store i64* %24, i64** %5, align 8
  %25 = load %struct.lan78xx_net*, %struct.lan78xx_net** %2, align 8
  %26 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  store i32* %27, i32** %6, align 8
  %28 = load %struct.lan78xx_net*, %struct.lan78xx_net** %2, align 8
  %29 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load %struct.lan78xx_net*, %struct.lan78xx_net** %2, align 8
  %33 = call i64 @lan78xx_read_stats(%struct.lan78xx_net* %32, %struct.lan78xx_statstage* %8)
  %34 = icmp sgt i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %15
  %36 = load %struct.lan78xx_net*, %struct.lan78xx_net** %2, align 8
  %37 = call i32 @lan78xx_check_stat_rollover(%struct.lan78xx_net* %36, %struct.lan78xx_statstage* %8)
  br label %38

38:                                               ; preds = %35, %15
  store i32 0, i32* %7, align 4
  br label %39

39:                                               ; preds = %69, %38
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = icmp ult i64 %41, 0
  br i1 %42, label %43, label %72

43:                                               ; preds = %39
  %44 = load i64*, i64** %3, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = trunc i64 %48 to i32
  %50 = load i64*, i64** %4, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  %56 = load i64*, i64** %5, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i32
  %62 = add nsw i32 %61, 1
  %63 = mul nsw i32 %55, %62
  %64 = add nsw i32 %49, %63
  %65 = load i32*, i32** %6, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  store i32 %64, i32* %68, align 4
  br label %69

69:                                               ; preds = %43
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %7, align 4
  br label %39

72:                                               ; preds = %39
  %73 = load %struct.lan78xx_net*, %struct.lan78xx_net** %2, align 8
  %74 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = call i32 @mutex_unlock(i32* %75)
  %77 = load %struct.lan78xx_net*, %struct.lan78xx_net** %2, align 8
  %78 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @usb_autopm_put_interface(i32 %79)
  br label %81

81:                                               ; preds = %72, %14
  ret void
}

declare dso_local i64 @usb_autopm_get_interface(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @lan78xx_read_stats(%struct.lan78xx_net*, %struct.lan78xx_statstage*) #1

declare dso_local i32 @lan78xx_check_stat_rollover(%struct.lan78xx_net*, %struct.lan78xx_statstage*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @usb_autopm_put_interface(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
