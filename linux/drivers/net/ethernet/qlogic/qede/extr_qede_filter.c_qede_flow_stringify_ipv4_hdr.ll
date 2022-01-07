; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_filter.c_qede_flow_stringify_ipv4_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_filter.c_qede_flow_stringify_ipv4_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qede_arfs_tuple = type { i64, i32, i32, i32, i32 }

@IPPROTO_TCP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"TCP\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"UDP\00", align 1
@QEDE_FILTER_PRINT_MAX_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"%s %pI4 (%04x) -> %pI4 (%04x)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qede_arfs_tuple*, i8*)* @qede_flow_stringify_ipv4_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qede_flow_stringify_ipv4_hdr(%struct.qede_arfs_tuple* %0, i8* %1) #0 {
  %3 = alloca %struct.qede_arfs_tuple*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.qede_arfs_tuple* %0, %struct.qede_arfs_tuple** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.qede_arfs_tuple*, %struct.qede_arfs_tuple** %3, align 8
  %7 = getelementptr inbounds %struct.qede_arfs_tuple, %struct.qede_arfs_tuple* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @IPPROTO_TCP, align 8
  %10 = icmp eq i64 %8, %9
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)
  store i8* %12, i8** %5, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = load i32, i32* @QEDE_FILTER_PRINT_MAX_LEN, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = load %struct.qede_arfs_tuple*, %struct.qede_arfs_tuple** %3, align 8
  %17 = getelementptr inbounds %struct.qede_arfs_tuple, %struct.qede_arfs_tuple* %16, i32 0, i32 4
  %18 = load %struct.qede_arfs_tuple*, %struct.qede_arfs_tuple** %3, align 8
  %19 = getelementptr inbounds %struct.qede_arfs_tuple, %struct.qede_arfs_tuple* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.qede_arfs_tuple*, %struct.qede_arfs_tuple** %3, align 8
  %22 = getelementptr inbounds %struct.qede_arfs_tuple, %struct.qede_arfs_tuple* %21, i32 0, i32 3
  %23 = load %struct.qede_arfs_tuple*, %struct.qede_arfs_tuple** %3, align 8
  %24 = getelementptr inbounds %struct.qede_arfs_tuple, %struct.qede_arfs_tuple* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @snprintf(i8* %13, i32 %14, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %15, i32* %17, i32 %20, i32* %22, i32 %25)
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
