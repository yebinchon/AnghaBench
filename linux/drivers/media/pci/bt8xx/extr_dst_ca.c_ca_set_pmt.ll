; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dst_ca.c_ca_set_pmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dst_ca.c_ca_set_pmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_state = type { i32 }
%struct.ca_msg = type { i32* }

@verbose = common dso_local global i32 0, align 4
@DST_CA_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c" CA Message length=[%d]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dst_state*, %struct.ca_msg*, %struct.ca_msg*, i32, i32)* @ca_set_pmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ca_set_pmt(%struct.dst_state* %0, %struct.ca_msg* %1, %struct.ca_msg* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.dst_state*, align 8
  %7 = alloca %struct.ca_msg*, align 8
  %8 = alloca %struct.ca_msg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.dst_state* %0, %struct.dst_state** %6, align 8
  store %struct.ca_msg* %1, %struct.ca_msg** %7, align 8
  store %struct.ca_msg* %2, %struct.ca_msg** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 8, i32* %12, align 4
  %13 = load %struct.ca_msg*, %struct.ca_msg** %7, align 8
  %14 = getelementptr inbounds %struct.ca_msg, %struct.ca_msg* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 3
  %17 = call i32 @asn_1_decode(i32* %16)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* @verbose, align 4
  %19 = load i32, i32* @DST_CA_DEBUG, align 4
  %20 = load i32, i32* %11, align 4
  %21 = call i32 @dprintk(i32 %18, i32 %19, i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.ca_msg*, %struct.ca_msg** %7, align 8
  %23 = getelementptr inbounds %struct.ca_msg, %struct.ca_msg* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 4
  %26 = load i32, i32* %11, align 4
  %27 = call i32 @debug_string(i32* %25, i32 %26, i32 0)
  %28 = load %struct.ca_msg*, %struct.ca_msg** %8, align 8
  %29 = getelementptr inbounds %struct.ca_msg, %struct.ca_msg* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @memset(i32* %30, i8 signext 0, i32 %31)
  %33 = load %struct.dst_state*, %struct.dst_state** %6, align 8
  %34 = load %struct.ca_msg*, %struct.ca_msg** %7, align 8
  %35 = load %struct.ca_msg*, %struct.ca_msg** %8, align 8
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @handle_dst_tag(%struct.dst_state* %33, %struct.ca_msg* %34, %struct.ca_msg* %35, i32 %36)
  %38 = load %struct.ca_msg*, %struct.ca_msg** %8, align 8
  %39 = getelementptr inbounds %struct.ca_msg, %struct.ca_msg* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.ca_msg*, %struct.ca_msg** %8, align 8
  %42 = getelementptr inbounds %struct.ca_msg, %struct.ca_msg* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @put_checksum(i32* %40, i32 %45)
  %47 = load %struct.ca_msg*, %struct.ca_msg** %8, align 8
  %48 = getelementptr inbounds %struct.ca_msg, %struct.ca_msg* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %12, align 4
  %52 = add nsw i32 %50, %51
  %53 = call i32 @debug_string(i32* %49, i32 %52, i32 0)
  %54 = load %struct.dst_state*, %struct.dst_state** %6, align 8
  %55 = load %struct.ca_msg*, %struct.ca_msg** %8, align 8
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %12, align 4
  %58 = add nsw i32 %56, %57
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @write_to_8820(%struct.dst_state* %54, %struct.ca_msg* %55, i32 %58, i32 %59)
  ret i32 0
}

declare dso_local i32 @asn_1_decode(i32*) #1

declare dso_local i32 @dprintk(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @debug_string(i32*, i32, i32) #1

declare dso_local i32 @memset(i32*, i8 signext, i32) #1

declare dso_local i32 @handle_dst_tag(%struct.dst_state*, %struct.ca_msg*, %struct.ca_msg*, i32) #1

declare dso_local i32 @put_checksum(i32*, i32) #1

declare dso_local i32 @write_to_8820(%struct.dst_state*, %struct.ca_msg*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
