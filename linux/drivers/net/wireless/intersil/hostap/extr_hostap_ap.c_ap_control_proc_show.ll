; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/hostap/extr_hostap_ap.c_ap_control_proc_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/hostap/extr_hostap_ap.c_ap_control_proc_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.ap_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i8* }
%struct.mac_entry = type { i8* }

@SEQ_START_TOKEN = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"allow\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"deny\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"MAC policy: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"MAC entries: %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"MAC list:\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%pM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @ap_control_proc_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ap_control_proc_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ap_data*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.mac_entry*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %10 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @file_inode(i32 %11)
  %13 = call %struct.ap_data* @PDE_DATA(i32 %12)
  store %struct.ap_data* %13, %struct.ap_data** %6, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = load i8*, i8** @SEQ_START_TOKEN, align 8
  %16 = icmp eq i8* %14, %15
  br i1 %16, label %17, label %38

17:                                               ; preds = %2
  %18 = load %struct.ap_data*, %struct.ap_data** %6, align 8
  %19 = getelementptr inbounds %struct.ap_data, %struct.ap_data* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %25 [
    i32 128, label %22
    i32 130, label %23
    i32 129, label %24
  ]

22:                                               ; preds = %17
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  br label %26

23:                                               ; preds = %17
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  br label %26

24:                                               ; preds = %17
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  br label %26

25:                                               ; preds = %17
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %7, align 8
  br label %26

26:                                               ; preds = %25, %24, %23, %22
  %27 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @seq_printf(%struct.seq_file* %27, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* %28)
  %30 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %31 = load %struct.ap_data*, %struct.ap_data** %6, align 8
  %32 = getelementptr inbounds %struct.ap_data, %struct.ap_data* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @seq_printf(%struct.seq_file* %30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* %34)
  %36 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %37 = call i32 @seq_puts(%struct.seq_file* %36, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %46

38:                                               ; preds = %2
  %39 = load i8*, i8** %5, align 8
  %40 = bitcast i8* %39 to %struct.mac_entry*
  store %struct.mac_entry* %40, %struct.mac_entry** %8, align 8
  %41 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %42 = load %struct.mac_entry*, %struct.mac_entry** %8, align 8
  %43 = getelementptr inbounds %struct.mac_entry, %struct.mac_entry* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @seq_printf(%struct.seq_file* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* %44)
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %38, %26
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local %struct.ap_data* @PDE_DATA(i32) #1

declare dso_local i32 @file_inode(i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
