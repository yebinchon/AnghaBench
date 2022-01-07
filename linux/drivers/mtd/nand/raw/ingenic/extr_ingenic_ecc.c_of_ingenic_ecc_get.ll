; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/ingenic/extr_ingenic_ecc.c_of_ingenic_ecc_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/ingenic/extr_ingenic_ecc.c_of_ingenic_ecc_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ingenic_ecc = type { i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"ecc-engine\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"ingenic,bch-controller\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ingenic_ecc* @of_ingenic_ecc_get(%struct.device_node* %0) #0 {
  %2 = alloca %struct.device_node*, align 8
  %3 = alloca %struct.ingenic_ecc*, align 8
  %4 = alloca %struct.device_node*, align 8
  store %struct.device_node* %0, %struct.device_node** %2, align 8
  store %struct.ingenic_ecc* null, %struct.ingenic_ecc** %3, align 8
  %5 = load %struct.device_node*, %struct.device_node** %2, align 8
  %6 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 0)
  store %struct.device_node* %6, %struct.device_node** %4, align 8
  %7 = load %struct.device_node*, %struct.device_node** %4, align 8
  %8 = icmp ne %struct.device_node* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load %struct.device_node*, %struct.device_node** %2, align 8
  %11 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %10, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store %struct.device_node* %11, %struct.device_node** %4, align 8
  br label %12

12:                                               ; preds = %9, %1
  %13 = load %struct.device_node*, %struct.device_node** %4, align 8
  %14 = icmp ne %struct.device_node* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = load %struct.device_node*, %struct.device_node** %4, align 8
  %17 = call %struct.ingenic_ecc* @ingenic_ecc_get(%struct.device_node* %16)
  store %struct.ingenic_ecc* %17, %struct.ingenic_ecc** %3, align 8
  %18 = load %struct.device_node*, %struct.device_node** %4, align 8
  %19 = call i32 @of_node_put(%struct.device_node* %18)
  br label %20

20:                                               ; preds = %15, %12
  %21 = load %struct.ingenic_ecc*, %struct.ingenic_ecc** %3, align 8
  ret %struct.ingenic_ecc* %21
}

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local %struct.ingenic_ecc* @ingenic_ecc_get(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
