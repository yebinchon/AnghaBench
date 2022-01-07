; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_tun_chr_write_iter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_tun_chr_write_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { %struct.file* }
%struct.file = type { i32, %struct.tun_file* }
%struct.tun_file = type { i32 }
%struct.iov_iter = type { i32 }
%struct.tun_struct = type { i32 }

@EBADFD = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.iov_iter*)* @tun_chr_write_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tun_chr_write_iter(%struct.kiocb* %0, %struct.iov_iter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kiocb*, align 8
  %5 = alloca %struct.iov_iter*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.tun_file*, align 8
  %8 = alloca %struct.tun_struct*, align 8
  %9 = alloca i32, align 4
  store %struct.kiocb* %0, %struct.kiocb** %4, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %5, align 8
  %10 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %11 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %10, i32 0, i32 0
  %12 = load %struct.file*, %struct.file** %11, align 8
  store %struct.file* %12, %struct.file** %6, align 8
  %13 = load %struct.file*, %struct.file** %6, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 1
  %15 = load %struct.tun_file*, %struct.tun_file** %14, align 8
  store %struct.tun_file* %15, %struct.tun_file** %7, align 8
  %16 = load %struct.tun_file*, %struct.tun_file** %7, align 8
  %17 = call %struct.tun_struct* @tun_get(%struct.tun_file* %16)
  store %struct.tun_struct* %17, %struct.tun_struct** %8, align 8
  %18 = load %struct.tun_struct*, %struct.tun_struct** %8, align 8
  %19 = icmp ne %struct.tun_struct* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @EBADFD, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %36

23:                                               ; preds = %2
  %24 = load %struct.tun_struct*, %struct.tun_struct** %8, align 8
  %25 = load %struct.tun_file*, %struct.tun_file** %7, align 8
  %26 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %27 = load %struct.file*, %struct.file** %6, align 8
  %28 = getelementptr inbounds %struct.file, %struct.file* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @O_NONBLOCK, align 4
  %31 = and i32 %29, %30
  %32 = call i32 @tun_get_user(%struct.tun_struct* %24, %struct.tun_file* %25, i32* null, %struct.iov_iter* %26, i32 %31, i32 0)
  store i32 %32, i32* %9, align 4
  %33 = load %struct.tun_struct*, %struct.tun_struct** %8, align 8
  %34 = call i32 @tun_put(%struct.tun_struct* %33)
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %23, %20
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local %struct.tun_struct* @tun_get(%struct.tun_file*) #1

declare dso_local i32 @tun_get_user(%struct.tun_struct*, %struct.tun_file*, i32*, %struct.iov_iter*, i32, i32) #1

declare dso_local i32 @tun_put(%struct.tun_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
