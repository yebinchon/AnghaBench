; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_ipaq-micro.c_ipaq_micro_eeprom_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_ipaq-micro.c_ipaq_micro_eeprom_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipaq_micro = type { i32 }
%struct.ipaq_micro_msg = type { i32*, i32, i32, i32 }

@MSG_EEPROM_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipaq_micro*, i32, i32, i32*)* @ipaq_micro_eeprom_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipaq_micro_eeprom_read(%struct.ipaq_micro* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.ipaq_micro*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ipaq_micro_msg, align 8
  %10 = alloca i32, align 4
  store %struct.ipaq_micro* %0, %struct.ipaq_micro** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %11 = bitcast %struct.ipaq_micro_msg* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 24, i1 false)
  %12 = getelementptr inbounds %struct.ipaq_micro_msg, %struct.ipaq_micro_msg* %9, i32 0, i32 3
  %13 = load i32, i32* @MSG_EEPROM_READ, align 4
  store i32 %13, i32* %12, align 8
  store i32 0, i32* %10, align 4
  br label %14

14:                                               ; preds = %39, %4
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %42

18:                                               ; preds = %14
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %10, align 4
  %21 = add nsw i32 %19, %20
  %22 = getelementptr inbounds %struct.ipaq_micro_msg, %struct.ipaq_micro_msg* %9, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  store i32 %21, i32* %24, align 4
  %25 = getelementptr inbounds %struct.ipaq_micro_msg, %struct.ipaq_micro_msg* %9, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  store i32 1, i32* %27, align 4
  %28 = getelementptr inbounds %struct.ipaq_micro_msg, %struct.ipaq_micro_msg* %9, i32 0, i32 1
  store i32 2, i32* %28, align 8
  %29 = load %struct.ipaq_micro*, %struct.ipaq_micro** %5, align 8
  %30 = call i32 @ipaq_micro_tx_msg_sync(%struct.ipaq_micro* %29, %struct.ipaq_micro_msg* %9)
  %31 = load i32*, i32** %8, align 8
  %32 = load i32, i32* %10, align 4
  %33 = mul nsw i32 %32, 2
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = getelementptr inbounds %struct.ipaq_micro_msg, %struct.ipaq_micro_msg* %9, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @memcpy(i32* %35, i32 %37, i32 2)
  br label %39

39:                                               ; preds = %18
  %40 = load i32, i32* %10, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %10, align 4
  br label %14

42:                                               ; preds = %14
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ipaq_micro_tx_msg_sync(%struct.ipaq_micro*, %struct.ipaq_micro_msg*) #2

declare dso_local i32 @memcpy(i32*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
