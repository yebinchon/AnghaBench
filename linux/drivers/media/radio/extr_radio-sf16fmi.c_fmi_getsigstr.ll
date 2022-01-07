; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-sf16fmi.c_fmi_getsigstr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-sf16fmi.c_fmi_getsigstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fmi = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fmi*)* @fmi_getsigstr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fmi_getsigstr(%struct.fmi* %0) #0 {
  %2 = alloca %struct.fmi*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.fmi* %0, %struct.fmi** %2, align 8
  %5 = load %struct.fmi*, %struct.fmi** %2, align 8
  %6 = getelementptr inbounds %struct.fmi, %struct.fmi* %5, i32 0, i32 0
  %7 = call i32 @mutex_lock(i32* %6)
  %8 = load %struct.fmi*, %struct.fmi** %2, align 8
  %9 = getelementptr inbounds %struct.fmi, %struct.fmi* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i32 0, i32 8
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.fmi*, %struct.fmi** %2, align 8
  %16 = getelementptr inbounds %struct.fmi, %struct.fmi* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @outb(i32 %14, i32 %17)
  %19 = load i32, i32* %3, align 4
  %20 = or i32 %19, 16
  %21 = load %struct.fmi*, %struct.fmi** %2, align 8
  %22 = getelementptr inbounds %struct.fmi, %struct.fmi* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @outb(i32 %20, i32 %23)
  %25 = call i32 @msleep(i32 143)
  %26 = load %struct.fmi*, %struct.fmi** %2, align 8
  %27 = getelementptr inbounds %struct.fmi, %struct.fmi* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  %30 = call i64 @inb(i32 %29)
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %3, align 4
  %33 = load %struct.fmi*, %struct.fmi** %2, align 8
  %34 = getelementptr inbounds %struct.fmi, %struct.fmi* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @outb(i32 %32, i32 %35)
  %37 = load %struct.fmi*, %struct.fmi** %2, align 8
  %38 = getelementptr inbounds %struct.fmi, %struct.fmi* %37, i32 0, i32 0
  %39 = call i32 @mutex_unlock(i32* %38)
  %40 = load i32, i32* %4, align 4
  %41 = and i32 %40, 2
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 0, i32 65535
  ret i32 %44
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @inb(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
