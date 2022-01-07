; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sn9c2028.c_set_gain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sn9c2028.c_set_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i32 }
%struct.init_command = type { i32*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i32)* @set_gain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_gain(%struct.gspca_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sd*, align 8
  %6 = alloca [1 x %struct.init_command], align 16
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %8 = bitcast %struct.gspca_dev* %7 to %struct.sd*
  store %struct.sd* %8, %struct.sd** %5, align 8
  %9 = bitcast [1 x %struct.init_command]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %9, i8 0, i64 40, i1 false)
  %10 = bitcast i8* %9 to [1 x %struct.init_command]*
  %11 = getelementptr inbounds [1 x %struct.init_command], [1 x %struct.init_command]* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.init_command, %struct.init_command* %11, i32 0, i32 0
  store i32* inttoptr (i64 29 to i32*), i32** %12, align 16
  %13 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %14 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %34

18:                                               ; preds = %2
  %19 = load %struct.sd*, %struct.sd** %5, align 8
  %20 = getelementptr inbounds %struct.sd, %struct.sd* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %33 [
    i32 28675, label %22
  ]

22:                                               ; preds = %18
  %23 = load i32, i32* %4, align 4
  %24 = getelementptr inbounds [1 x %struct.init_command], [1 x %struct.init_command]* %6, i64 0, i64 0
  %25 = getelementptr inbounds %struct.init_command, %struct.init_command* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 16
  %27 = getelementptr inbounds i32, i32* %26, i64 2
  store i32 %23, i32* %27, align 4
  %28 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %29 = getelementptr inbounds [1 x %struct.init_command], [1 x %struct.init_command]* %6, i64 0, i64 0
  %30 = getelementptr inbounds [1 x %struct.init_command], [1 x %struct.init_command]* %6, i64 0, i64 0
  %31 = call i32 @ARRAY_SIZE(%struct.init_command* %30)
  %32 = call i32 @run_start_commands(%struct.gspca_dev* %28, %struct.init_command* %29, i32 %31)
  br label %34

33:                                               ; preds = %18
  br label %34

34:                                               ; preds = %17, %33, %22
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @run_start_commands(%struct.gspca_dev*, %struct.init_command*, i32) #2

declare dso_local i32 @ARRAY_SIZE(%struct.init_command*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
