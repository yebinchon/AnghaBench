; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_mac8390.c_mac8390_rsrc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_mac8390.c_mac8390_rsrc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32*, i32, i32, i32 }
%struct.nubus_rsrc = type { %struct.nubus_board* }
%struct.nubus_board = type { i32, i32, i32 }
%struct.nubus_dir = type { i32 }
%struct.nubus_dirent = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"Unable to get Nubus functional directory\0A\00", align 1
@NUBUS_RESID_MAC_ADDRESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"MAC address resource not found\0A\00", align 1
@useresources = common dso_local global i32* null, align 8
@NUBUS_RESID_MINOR_BASEOS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Memory offset resource not found\0A\00", align 1
@NUBUS_RESID_MINOR_LENGTH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"Memory length resource not found, probing\0A\00", align 1
@DAYNA_8390_BASE = common dso_local global i32 0, align 4
@DAYNA_8390_MEM = common dso_local global i32 0, align 4
@INTERLAN_8390_BASE = common dso_local global i32 0, align 4
@INTERLAN_8390_MEM = common dso_local global i32 0, align 4
@CABLETRON_8390_BASE = common dso_local global i32 0, align 4
@CABLETRON_8390_MEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"No known base address for card type\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.nubus_rsrc*, i32)* @mac8390_rsrc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mac8390_rsrc_init(%struct.net_device* %0, %struct.nubus_rsrc* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.nubus_rsrc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nubus_board*, align 8
  %9 = alloca %struct.nubus_dir, align 4
  %10 = alloca %struct.nubus_dirent, align 4
  %11 = alloca i32, align 4
  %12 = alloca i16*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.nubus_rsrc* %1, %struct.nubus_rsrc** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.nubus_rsrc*, %struct.nubus_rsrc** %6, align 8
  %14 = getelementptr inbounds %struct.nubus_rsrc, %struct.nubus_rsrc* %13, i32 0, i32 0
  %15 = load %struct.nubus_board*, %struct.nubus_board** %14, align 8
  store %struct.nubus_board* %15, %struct.nubus_board** %8, align 8
  %16 = load %struct.nubus_board*, %struct.nubus_board** %8, align 8
  %17 = getelementptr inbounds %struct.nubus_board, %struct.nubus_board* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @SLOT2IRQ(i32 %18)
  %20 = load %struct.net_device*, %struct.net_device** %5, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 4
  store i32 %19, i32* %21, align 8
  %22 = load %struct.nubus_board*, %struct.nubus_board** %8, align 8
  %23 = getelementptr inbounds %struct.nubus_board, %struct.nubus_board* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.nubus_board*, %struct.nubus_board** %8, align 8
  %26 = getelementptr inbounds %struct.nubus_board, %struct.nubus_board* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, 15
  %29 = shl i32 %28, 20
  %30 = or i32 %24, %29
  %31 = load %struct.net_device*, %struct.net_device** %5, align 8
  %32 = getelementptr inbounds %struct.net_device, %struct.net_device* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.nubus_rsrc*, %struct.nubus_rsrc** %6, align 8
  %34 = call i32 @nubus_get_func_dir(%struct.nubus_rsrc* %33, %struct.nubus_dir* %9)
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %40

36:                                               ; preds = %3
  %37 = load %struct.nubus_board*, %struct.nubus_board** %8, align 8
  %38 = getelementptr inbounds %struct.nubus_board, %struct.nubus_board* %37, i32 0, i32 2
  %39 = call i32 @dev_err(i32* %38, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %195

40:                                               ; preds = %3
  %41 = load i32, i32* @NUBUS_RESID_MAC_ADDRESS, align 4
  %42 = call i32 @nubus_find_rsrc(%struct.nubus_dir* %9, i32 %41, %struct.nubus_dirent* %10)
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load %struct.nubus_board*, %struct.nubus_board** %8, align 8
  %46 = getelementptr inbounds %struct.nubus_board, %struct.nubus_board* %45, i32 0, i32 2
  %47 = call i32 @dev_info(i32* %46, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %195

48:                                               ; preds = %40
  %49 = load %struct.net_device*, %struct.net_device** %5, align 8
  %50 = getelementptr inbounds %struct.net_device, %struct.net_device* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @nubus_get_rsrc_mem(i32* %51, %struct.nubus_dirent* %10, i32 6)
  %53 = load i32*, i32** @useresources, align 8
  %54 = load i32, i32* %7, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %105

59:                                               ; preds = %48
  %60 = call i32 @nubus_rewinddir(%struct.nubus_dir* %9)
  %61 = load i32, i32* @NUBUS_RESID_MINOR_BASEOS, align 4
  %62 = call i32 @nubus_find_rsrc(%struct.nubus_dir* %9, i32 %61, %struct.nubus_dirent* %10)
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load %struct.nubus_board*, %struct.nubus_board** %8, align 8
  %66 = getelementptr inbounds %struct.nubus_board, %struct.nubus_board* %65, i32 0, i32 2
  %67 = call i32 @dev_err(i32* %66, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %195

68:                                               ; preds = %59
  %69 = call i32 @nubus_get_rsrc_mem(i32* %11, %struct.nubus_dirent* %10, i32 4)
  %70 = load %struct.net_device*, %struct.net_device** %5, align 8
  %71 = getelementptr inbounds %struct.net_device, %struct.net_device* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %11, align 4
  %74 = add nsw i32 %72, %73
  %75 = load %struct.net_device*, %struct.net_device** %5, align 8
  %76 = getelementptr inbounds %struct.net_device, %struct.net_device* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  %77 = load %struct.net_device*, %struct.net_device** %5, align 8
  %78 = getelementptr inbounds %struct.net_device, %struct.net_device* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %79, 65536
  %81 = load %struct.net_device*, %struct.net_device** %5, align 8
  %82 = getelementptr inbounds %struct.net_device, %struct.net_device* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = call i32 @nubus_rewinddir(%struct.nubus_dir* %9)
  %84 = load i32, i32* @NUBUS_RESID_MINOR_LENGTH, align 4
  %85 = call i32 @nubus_find_rsrc(%struct.nubus_dir* %9, i32 %84, %struct.nubus_dirent* %10)
  %86 = icmp eq i32 %85, -1
  br i1 %86, label %87, label %95

87:                                               ; preds = %68
  %88 = load %struct.nubus_board*, %struct.nubus_board** %8, align 8
  %89 = getelementptr inbounds %struct.nubus_board, %struct.nubus_board* %88, i32 0, i32 2
  %90 = call i32 @dev_info(i32* %89, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %91 = load %struct.net_device*, %struct.net_device** %5, align 8
  %92 = getelementptr inbounds %struct.net_device, %struct.net_device* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @mac8390_memsize(i32 %93)
  store i32 %94, i32* %11, align 4
  br label %97

95:                                               ; preds = %68
  %96 = call i32 @nubus_get_rsrc_mem(i32* %11, %struct.nubus_dirent* %10, i32 4)
  br label %97

97:                                               ; preds = %95, %87
  %98 = load %struct.net_device*, %struct.net_device** %5, align 8
  %99 = getelementptr inbounds %struct.net_device, %struct.net_device* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* %11, align 4
  %102 = add nsw i32 %100, %101
  %103 = load %struct.net_device*, %struct.net_device** %5, align 8
  %104 = getelementptr inbounds %struct.net_device, %struct.net_device* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 4
  br label %194

105:                                              ; preds = %48
  %106 = load i32, i32* %7, align 4
  switch i32 %106, label %189 [
    i32 128, label %107
    i32 130, label %107
    i32 129, label %132
    i32 131, label %157
  ]

107:                                              ; preds = %105, %105
  %108 = load %struct.nubus_board*, %struct.nubus_board** %8, align 8
  %109 = getelementptr inbounds %struct.nubus_board, %struct.nubus_board* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @DAYNA_8390_BASE, align 4
  %112 = add nsw i32 %110, %111
  %113 = load %struct.net_device*, %struct.net_device** %5, align 8
  %114 = getelementptr inbounds %struct.net_device, %struct.net_device* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 8
  %115 = load %struct.nubus_board*, %struct.nubus_board** %8, align 8
  %116 = getelementptr inbounds %struct.nubus_board, %struct.nubus_board* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @DAYNA_8390_MEM, align 4
  %119 = add nsw i32 %117, %118
  %120 = load %struct.net_device*, %struct.net_device** %5, align 8
  %121 = getelementptr inbounds %struct.net_device, %struct.net_device* %120, i32 0, i32 2
  store i32 %119, i32* %121, align 8
  %122 = load %struct.net_device*, %struct.net_device** %5, align 8
  %123 = getelementptr inbounds %struct.net_device, %struct.net_device* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.net_device*, %struct.net_device** %5, align 8
  %126 = getelementptr inbounds %struct.net_device, %struct.net_device* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @mac8390_memsize(i32 %127)
  %129 = add nsw i32 %124, %128
  %130 = load %struct.net_device*, %struct.net_device** %5, align 8
  %131 = getelementptr inbounds %struct.net_device, %struct.net_device* %130, i32 0, i32 3
  store i32 %129, i32* %131, align 4
  br label %193

132:                                              ; preds = %105
  %133 = load %struct.nubus_board*, %struct.nubus_board** %8, align 8
  %134 = getelementptr inbounds %struct.nubus_board, %struct.nubus_board* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @INTERLAN_8390_BASE, align 4
  %137 = add nsw i32 %135, %136
  %138 = load %struct.net_device*, %struct.net_device** %5, align 8
  %139 = getelementptr inbounds %struct.net_device, %struct.net_device* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 8
  %140 = load %struct.nubus_board*, %struct.nubus_board** %8, align 8
  %141 = getelementptr inbounds %struct.nubus_board, %struct.nubus_board* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @INTERLAN_8390_MEM, align 4
  %144 = add nsw i32 %142, %143
  %145 = load %struct.net_device*, %struct.net_device** %5, align 8
  %146 = getelementptr inbounds %struct.net_device, %struct.net_device* %145, i32 0, i32 2
  store i32 %144, i32* %146, align 8
  %147 = load %struct.net_device*, %struct.net_device** %5, align 8
  %148 = getelementptr inbounds %struct.net_device, %struct.net_device* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.net_device*, %struct.net_device** %5, align 8
  %151 = getelementptr inbounds %struct.net_device, %struct.net_device* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @mac8390_memsize(i32 %152)
  %154 = add nsw i32 %149, %153
  %155 = load %struct.net_device*, %struct.net_device** %5, align 8
  %156 = getelementptr inbounds %struct.net_device, %struct.net_device* %155, i32 0, i32 3
  store i32 %154, i32* %156, align 4
  br label %193

157:                                              ; preds = %105
  %158 = load %struct.nubus_board*, %struct.nubus_board** %8, align 8
  %159 = getelementptr inbounds %struct.nubus_board, %struct.nubus_board* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @CABLETRON_8390_BASE, align 4
  %162 = add nsw i32 %160, %161
  %163 = load %struct.net_device*, %struct.net_device** %5, align 8
  %164 = getelementptr inbounds %struct.net_device, %struct.net_device* %163, i32 0, i32 0
  store i32 %162, i32* %164, align 8
  %165 = load %struct.nubus_board*, %struct.nubus_board** %8, align 8
  %166 = getelementptr inbounds %struct.nubus_board, %struct.nubus_board* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @CABLETRON_8390_MEM, align 4
  %169 = add nsw i32 %167, %168
  %170 = load %struct.net_device*, %struct.net_device** %5, align 8
  %171 = getelementptr inbounds %struct.net_device, %struct.net_device* %170, i32 0, i32 2
  store i32 %169, i32* %171, align 8
  %172 = load %struct.net_device*, %struct.net_device** %5, align 8
  %173 = getelementptr inbounds %struct.net_device, %struct.net_device* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = sext i32 %174 to i64
  %176 = inttoptr i64 %175 to i8*
  %177 = bitcast i8* %176 to i16*
  store i16* %177, i16** %12, align 8
  %178 = load i16*, i16** %12, align 8
  store volatile i16 33, i16* %178, align 2
  %179 = load %struct.net_device*, %struct.net_device** %5, align 8
  %180 = getelementptr inbounds %struct.net_device, %struct.net_device* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.net_device*, %struct.net_device** %5, align 8
  %183 = getelementptr inbounds %struct.net_device, %struct.net_device* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @mac8390_memsize(i32 %184)
  %186 = add nsw i32 %181, %185
  %187 = load %struct.net_device*, %struct.net_device** %5, align 8
  %188 = getelementptr inbounds %struct.net_device, %struct.net_device* %187, i32 0, i32 3
  store i32 %186, i32* %188, align 4
  br label %193

189:                                              ; preds = %105
  %190 = load %struct.nubus_board*, %struct.nubus_board** %8, align 8
  %191 = getelementptr inbounds %struct.nubus_board, %struct.nubus_board* %190, i32 0, i32 2
  %192 = call i32 @dev_err(i32* %191, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %195

193:                                              ; preds = %157, %132, %107
  br label %194

194:                                              ; preds = %193, %97
  store i32 1, i32* %4, align 4
  br label %195

195:                                              ; preds = %194, %189, %64, %44, %36
  %196 = load i32, i32* %4, align 4
  ret i32 %196
}

declare dso_local i32 @SLOT2IRQ(i32) #1

declare dso_local i32 @nubus_get_func_dir(%struct.nubus_rsrc*, %struct.nubus_dir*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @nubus_find_rsrc(%struct.nubus_dir*, i32, %struct.nubus_dirent*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @nubus_get_rsrc_mem(i32*, %struct.nubus_dirent*, i32) #1

declare dso_local i32 @nubus_rewinddir(%struct.nubus_dir*) #1

declare dso_local i32 @mac8390_memsize(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
