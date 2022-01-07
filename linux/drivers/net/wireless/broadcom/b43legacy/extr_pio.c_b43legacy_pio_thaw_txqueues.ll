; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_pio.c_b43legacy_pio_thaw_txqueues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_pio.c_b43legacy_pio_thaw_txqueues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { %struct.b43legacy_pio }
%struct.b43legacy_pio = type { %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32, i32, i64 }
%struct.TYPE_7__ = type { i32, i32, i64 }
%struct.TYPE_6__ = type { i32, i32, i64 }
%struct.TYPE_5__ = type { i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b43legacy_pio_thaw_txqueues(%struct.b43legacy_wldev* %0) #0 {
  %2 = alloca %struct.b43legacy_wldev*, align 8
  %3 = alloca %struct.b43legacy_pio*, align 8
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %2, align 8
  %4 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %5 = call i32 @b43legacy_using_pio(%struct.b43legacy_wldev* %4)
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i32 @B43legacy_WARN_ON(i32 %8)
  %10 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %11 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %10, i32 0, i32 0
  store %struct.b43legacy_pio* %11, %struct.b43legacy_pio** %3, align 8
  %12 = load %struct.b43legacy_pio*, %struct.b43legacy_pio** %3, align 8
  %13 = getelementptr inbounds %struct.b43legacy_pio, %struct.b43legacy_pio* %12, i32 0, i32 3
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 2
  store i64 0, i64* %15, align 8
  %16 = load %struct.b43legacy_pio*, %struct.b43legacy_pio** %3, align 8
  %17 = getelementptr inbounds %struct.b43legacy_pio, %struct.b43legacy_pio* %16, i32 0, i32 2
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 2
  store i64 0, i64* %19, align 8
  %20 = load %struct.b43legacy_pio*, %struct.b43legacy_pio** %3, align 8
  %21 = getelementptr inbounds %struct.b43legacy_pio, %struct.b43legacy_pio* %20, i32 0, i32 1
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 2
  store i64 0, i64* %23, align 8
  %24 = load %struct.b43legacy_pio*, %struct.b43legacy_pio** %3, align 8
  %25 = getelementptr inbounds %struct.b43legacy_pio, %struct.b43legacy_pio* %24, i32 0, i32 0
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 2
  store i64 0, i64* %27, align 8
  %28 = load %struct.b43legacy_pio*, %struct.b43legacy_pio** %3, align 8
  %29 = getelementptr inbounds %struct.b43legacy_pio, %struct.b43legacy_pio* %28, i32 0, i32 3
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = call i32 @list_empty(i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %1
  %35 = load %struct.b43legacy_pio*, %struct.b43legacy_pio** %3, align 8
  %36 = getelementptr inbounds %struct.b43legacy_pio, %struct.b43legacy_pio* %35, i32 0, i32 3
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = call i32 @tasklet_schedule(i32* %38)
  br label %40

40:                                               ; preds = %34, %1
  %41 = load %struct.b43legacy_pio*, %struct.b43legacy_pio** %3, align 8
  %42 = getelementptr inbounds %struct.b43legacy_pio, %struct.b43legacy_pio* %41, i32 0, i32 2
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = call i32 @list_empty(i32* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %40
  %48 = load %struct.b43legacy_pio*, %struct.b43legacy_pio** %3, align 8
  %49 = getelementptr inbounds %struct.b43legacy_pio, %struct.b43legacy_pio* %48, i32 0, i32 2
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = call i32 @tasklet_schedule(i32* %51)
  br label %53

53:                                               ; preds = %47, %40
  %54 = load %struct.b43legacy_pio*, %struct.b43legacy_pio** %3, align 8
  %55 = getelementptr inbounds %struct.b43legacy_pio, %struct.b43legacy_pio* %54, i32 0, i32 1
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = call i32 @list_empty(i32* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %53
  %61 = load %struct.b43legacy_pio*, %struct.b43legacy_pio** %3, align 8
  %62 = getelementptr inbounds %struct.b43legacy_pio, %struct.b43legacy_pio* %61, i32 0, i32 1
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = call i32 @tasklet_schedule(i32* %64)
  br label %66

66:                                               ; preds = %60, %53
  %67 = load %struct.b43legacy_pio*, %struct.b43legacy_pio** %3, align 8
  %68 = getelementptr inbounds %struct.b43legacy_pio, %struct.b43legacy_pio* %67, i32 0, i32 0
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  %71 = call i32 @list_empty(i32* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %66
  %74 = load %struct.b43legacy_pio*, %struct.b43legacy_pio** %3, align 8
  %75 = getelementptr inbounds %struct.b43legacy_pio, %struct.b43legacy_pio* %74, i32 0, i32 0
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = call i32 @tasklet_schedule(i32* %77)
  br label %79

79:                                               ; preds = %73, %66
  ret void
}

declare dso_local i32 @B43legacy_WARN_ON(i32) #1

declare dso_local i32 @b43legacy_using_pio(%struct.b43legacy_wldev*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
