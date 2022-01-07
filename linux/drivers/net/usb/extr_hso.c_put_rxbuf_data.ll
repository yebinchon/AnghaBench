; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_hso.c_put_rxbuf_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_hso.c_put_rxbuf_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i32 }
%struct.hso_serial = type { i64*, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.tty_struct = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"serial = NULL\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"data to push to tty\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"dropping data, %d bytes lost\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.urb*, %struct.hso_serial*)* @put_rxbuf_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @put_rxbuf_data(%struct.urb* %0, %struct.hso_serial* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.urb*, align 8
  %5 = alloca %struct.hso_serial*, align 8
  %6 = alloca %struct.tty_struct*, align 8
  %7 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %4, align 8
  store %struct.hso_serial* %1, %struct.hso_serial** %5, align 8
  %8 = load %struct.urb*, %struct.urb** %4, align 8
  %9 = icmp eq %struct.urb* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load %struct.hso_serial*, %struct.hso_serial** %5, align 8
  %12 = icmp eq %struct.hso_serial* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %10, %2
  %14 = call i32 @hso_dbg(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 -2, i32* %3, align 4
  br label %75

15:                                               ; preds = %10
  %16 = load %struct.hso_serial*, %struct.hso_serial** %5, align 8
  %17 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %16, i32 0, i32 2
  %18 = call %struct.tty_struct* @tty_port_tty_get(i32* %17)
  store %struct.tty_struct* %18, %struct.tty_struct** %6, align 8
  %19 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %20 = icmp ne %struct.tty_struct* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %15
  %22 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %23 = call i64 @tty_throttled(%struct.tty_struct* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %27 = call i32 @tty_kref_put(%struct.tty_struct* %26)
  store i32 -1, i32* %3, align 4
  br label %75

28:                                               ; preds = %21, %15
  %29 = call i32 @hso_dbg(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %30 = load %struct.hso_serial*, %struct.hso_serial** %5, align 8
  %31 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %30, i32 0, i32 2
  %32 = load %struct.urb*, %struct.urb** %4, align 8
  %33 = getelementptr inbounds %struct.urb, %struct.urb* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @tty_buffer_request_room(i32* %31, i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.urb*, %struct.urb** %4, align 8
  %38 = getelementptr inbounds %struct.urb, %struct.urb* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp sge i32 %36, %39
  br i1 %40, label %41, label %54

41:                                               ; preds = %28
  %42 = load %struct.hso_serial*, %struct.hso_serial** %5, align 8
  %43 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %42, i32 0, i32 2
  %44 = load %struct.urb*, %struct.urb** %4, align 8
  %45 = getelementptr inbounds %struct.urb, %struct.urb* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.urb*, %struct.urb** %4, align 8
  %48 = getelementptr inbounds %struct.urb, %struct.urb* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @tty_insert_flip_string(i32* %43, i32 %46, i32 %49)
  %51 = load %struct.hso_serial*, %struct.hso_serial** %5, align 8
  %52 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %51, i32 0, i32 2
  %53 = call i32 @tty_flip_buffer_push(i32* %52)
  br label %65

54:                                               ; preds = %28
  %55 = load %struct.hso_serial*, %struct.hso_serial** %5, align 8
  %56 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %55, i32 0, i32 1
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load %struct.urb*, %struct.urb** %4, align 8
  %62 = getelementptr inbounds %struct.urb, %struct.urb* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @dev_warn(i32* %60, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %54, %41
  %66 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %67 = call i32 @tty_kref_put(%struct.tty_struct* %66)
  %68 = load %struct.hso_serial*, %struct.hso_serial** %5, align 8
  %69 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %68, i32 0, i32 0
  %70 = load i64*, i64** %69, align 8
  %71 = load %struct.hso_serial*, %struct.hso_serial** %5, align 8
  %72 = load %struct.urb*, %struct.urb** %4, align 8
  %73 = call i64 @hso_urb_to_index(%struct.hso_serial* %71, %struct.urb* %72)
  %74 = getelementptr inbounds i64, i64* %70, i64 %73
  store i64 0, i64* %74, align 8
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %65, %25, %13
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @hso_dbg(i32, i8*) #1

declare dso_local %struct.tty_struct* @tty_port_tty_get(i32*) #1

declare dso_local i64 @tty_throttled(%struct.tty_struct*) #1

declare dso_local i32 @tty_kref_put(%struct.tty_struct*) #1

declare dso_local i32 @tty_buffer_request_room(i32*, i32) #1

declare dso_local i32 @tty_insert_flip_string(i32*, i32, i32) #1

declare dso_local i32 @tty_flip_buffer_push(i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i64 @hso_urb_to_index(%struct.hso_serial*, %struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
