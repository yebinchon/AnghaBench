; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_hermes.h_hermes_write_bytes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_hermes.h_hermes_write_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hermes = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hermes*, i32, i8*, i32)* @hermes_write_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hermes_write_bytes(%struct.hermes* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.hermes*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.hermes* %0, %struct.hermes** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.hermes*, %struct.hermes** %5, align 8
  %11 = getelementptr inbounds %struct.hermes, %struct.hermes* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = shl i32 %9, %12
  store i32 %13, i32* %6, align 4
  %14 = load %struct.hermes*, %struct.hermes** %5, align 8
  %15 = getelementptr inbounds %struct.hermes, %struct.hermes* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %16, %18
  %20 = load i8*, i8** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = lshr i32 %21, 1
  %23 = call i32 @iowrite16_rep(i64 %19, i8* %20, i32 %22)
  %24 = load i32, i32* %8, align 4
  %25 = and i32 %24, 1
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %4
  %29 = load i8*, i8** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sub i32 %30, 1
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %29, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = load %struct.hermes*, %struct.hermes** %5, align 8
  %36 = getelementptr inbounds %struct.hermes, %struct.hermes* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %37, %39
  %41 = call i32 @iowrite8(i8 signext %34, i64 %40)
  br label %42

42:                                               ; preds = %28, %4
  ret void
}

declare dso_local i32 @iowrite16_rep(i64, i8*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @iowrite8(i8 signext, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
