; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/atmel/extr_atmel.c_atmel_lock_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/atmel/extr_atmel.c_atmel_lock_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_private = type { i32 }

@IFACE_LOCKOUT_HOST_OFFSET = common dso_local global i32 0, align 4
@IFACE_LOCKOUT_MAC_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_private*)* @atmel_lock_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_lock_mac(%struct.atmel_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atmel_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.atmel_private* %0, %struct.atmel_private** %3, align 8
  store i32 20, i32* %5, align 4
  br label %6

6:                                                ; preds = %49, %1
  store i32 5000, i32* %4, align 4
  br label %7

7:                                                ; preds = %20, %6
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %7
  %11 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %12 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %13 = load i32, i32* @IFACE_LOCKOUT_HOST_OFFSET, align 4
  %14 = call i32 @atmel_hi(%struct.atmel_private* %12, i32 %13)
  %15 = call i64 @atmel_rmem8(%struct.atmel_private* %11, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %10
  br label %23

18:                                               ; preds = %10
  %19 = call i32 @udelay(i32 20)
  br label %20

20:                                               ; preds = %18
  %21 = load i32, i32* %4, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %4, align 4
  br label %7

23:                                               ; preds = %17, %7
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %51

27:                                               ; preds = %23
  %28 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %29 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %30 = load i32, i32* @IFACE_LOCKOUT_MAC_OFFSET, align 4
  %31 = call i32 @atmel_hi(%struct.atmel_private* %29, i32 %30)
  %32 = call i32 @atmel_wmem8(%struct.atmel_private* %28, i32 %31, i32 1)
  %33 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %34 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %35 = load i32, i32* @IFACE_LOCKOUT_HOST_OFFSET, align 4
  %36 = call i32 @atmel_hi(%struct.atmel_private* %34, i32 %35)
  %37 = call i64 @atmel_rmem8(%struct.atmel_private* %33, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %27
  %40 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %41 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %42 = load i32, i32* @IFACE_LOCKOUT_MAC_OFFSET, align 4
  %43 = call i32 @atmel_hi(%struct.atmel_private* %41, i32 %42)
  %44 = call i32 @atmel_wmem8(%struct.atmel_private* %40, i32 %43, i32 0)
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %5, align 4
  %47 = icmp ne i32 %45, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %51

49:                                               ; preds = %39
  br label %6

50:                                               ; preds = %27
  store i32 1, i32* %2, align 4
  br label %51

51:                                               ; preds = %50, %48, %26
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i64 @atmel_rmem8(%struct.atmel_private*, i32) #1

declare dso_local i32 @atmel_hi(%struct.atmel_private*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @atmel_wmem8(%struct.atmel_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
