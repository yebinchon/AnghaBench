; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ti-st/extr_st_core.c_st_get_uart_wr_room.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ti-st/extr_st_core.c_st_get_uart_wr_room.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_data_s = type { %struct.tty_struct* }
%struct.tty_struct = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.tty_struct*)* }

@.str = private unnamed_addr constant [33 x i8] c"tty unavailable to perform write\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @st_get_uart_wr_room(%struct.st_data_s* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.st_data_s*, align 8
  %4 = alloca %struct.tty_struct*, align 8
  store %struct.st_data_s* %0, %struct.st_data_s** %3, align 8
  %5 = load %struct.st_data_s*, %struct.st_data_s** %3, align 8
  %6 = icmp eq %struct.st_data_s* %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = load %struct.st_data_s*, %struct.st_data_s** %3, align 8
  %9 = getelementptr inbounds %struct.st_data_s, %struct.st_data_s* %8, i32 0, i32 0
  %10 = load %struct.tty_struct*, %struct.tty_struct** %9, align 8
  %11 = icmp eq %struct.tty_struct* %10, null
  br label %12

12:                                               ; preds = %7, %1
  %13 = phi i1 [ true, %1 ], [ %11, %7 ]
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %30

19:                                               ; preds = %12
  %20 = load %struct.st_data_s*, %struct.st_data_s** %3, align 8
  %21 = getelementptr inbounds %struct.st_data_s, %struct.st_data_s* %20, i32 0, i32 0
  %22 = load %struct.tty_struct*, %struct.tty_struct** %21, align 8
  store %struct.tty_struct* %22, %struct.tty_struct** %4, align 8
  %23 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %24 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)** %26, align 8
  %28 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %29 = call i32 %27(%struct.tty_struct* %28)
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %19, %17
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
