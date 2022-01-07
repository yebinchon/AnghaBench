; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_x25_asy.c_x25_asy_open_tty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_x25_asy.c_x25_asy_open_tty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, %struct.x25_asy*, %struct.TYPE_3__* }
%struct.x25_asy = type { %struct.TYPE_4__*, %struct.tty_struct* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32* }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENFILE = common dso_local global i32 0, align 4
@ARPHRD_X25 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*)* @x25_asy_open_tty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x25_asy_open_tty(%struct.tty_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.x25_asy*, align 8
  %5 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  %6 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %7 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %6, i32 0, i32 2
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @EOPNOTSUPP, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %51

15:                                               ; preds = %1
  %16 = call %struct.x25_asy* (...) @x25_asy_alloc()
  store %struct.x25_asy* %16, %struct.x25_asy** %4, align 8
  %17 = load %struct.x25_asy*, %struct.x25_asy** %4, align 8
  %18 = icmp eq %struct.x25_asy* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i32, i32* @ENFILE, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %51

22:                                               ; preds = %15
  %23 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %24 = load %struct.x25_asy*, %struct.x25_asy** %4, align 8
  %25 = getelementptr inbounds %struct.x25_asy, %struct.x25_asy* %24, i32 0, i32 1
  store %struct.tty_struct* %23, %struct.tty_struct** %25, align 8
  %26 = load %struct.x25_asy*, %struct.x25_asy** %4, align 8
  %27 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %28 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %27, i32 0, i32 1
  store %struct.x25_asy* %26, %struct.x25_asy** %28, align 8
  %29 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %30 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %29, i32 0, i32 0
  store i32 65536, i32* %30, align 8
  %31 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %32 = call i32 @tty_driver_flush_buffer(%struct.tty_struct* %31)
  %33 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %34 = call i32 @tty_ldisc_flush(%struct.tty_struct* %33)
  %35 = load i32, i32* @ARPHRD_X25, align 4
  %36 = load %struct.x25_asy*, %struct.x25_asy** %4, align 8
  %37 = getelementptr inbounds %struct.x25_asy, %struct.x25_asy* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32 %35, i32* %39, align 4
  %40 = load %struct.x25_asy*, %struct.x25_asy** %4, align 8
  %41 = getelementptr inbounds %struct.x25_asy, %struct.x25_asy* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = call i32 @x25_asy_open(%struct.TYPE_4__* %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %22
  %47 = load %struct.x25_asy*, %struct.x25_asy** %4, align 8
  %48 = call i32 @x25_asy_free(%struct.x25_asy* %47)
  %49 = load i32, i32* %5, align 4
  store i32 %49, i32* %2, align 4
  br label %51

50:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %50, %46, %19, %12
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.x25_asy* @x25_asy_alloc(...) #1

declare dso_local i32 @tty_driver_flush_buffer(%struct.tty_struct*) #1

declare dso_local i32 @tty_ldisc_flush(%struct.tty_struct*) #1

declare dso_local i32 @x25_asy_open(%struct.TYPE_4__*) #1

declare dso_local i32 @x25_asy_free(%struct.x25_asy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
