; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/bdisp/extr_bdisp-debug.c_last_nodes_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/bdisp/extr_bdisp-debug.c_last_nodes_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.bdisp_dev* }
%struct.bdisp_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.bdisp_node** }
%struct.bdisp_node = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"No node built yet\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"--------\0ANode %d:\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"-- General --\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"NIP\090x%08X\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"CIC\090x%08X\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"ACK\090x%08X\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"-- Target --\0A\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"TBA\090x%08X\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"TXY\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"TSZ\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"-- Source 1 --\0A\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"S1BA\090x%08X\0A\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"S1TY\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"S1XY\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"-- Source 2 --\0A\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"S2BA\090x%08X\0A\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"S2TY\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"S2XY\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"S2SZ\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"-- Source 3 --\0A\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"S3BA\090x%08X\0A\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"S3TY\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"S3XY\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"S3SZ\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"-- Filter & Mask --\0A\00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"-- Chroma Filter --\0A\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"RSF\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"RZI\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"HFP\090x%08X\0A\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"VFP\090x%08X\0A\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"-- Luma Filter --\0A\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"Y_RSF\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"Y_RZI\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"Y_HFP\090x%08X\0A\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"Y_VFP\090x%08X\0A\00", align 1
@.str.35 = private unnamed_addr constant [30 x i8] c"-- Input Versatile Matrix --\0A\00", align 1
@MAX_NB_NODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @last_nodes_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @last_nodes_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.bdisp_dev*, align 8
  %7 = alloca %struct.bdisp_node*, align 8
  %8 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %10 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %9, i32 0, i32 0
  %11 = load %struct.bdisp_dev*, %struct.bdisp_dev** %10, align 8
  store %struct.bdisp_dev* %11, %struct.bdisp_dev** %6, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.bdisp_dev*, %struct.bdisp_dev** %6, align 8
  %13 = getelementptr inbounds %struct.bdisp_dev, %struct.bdisp_dev* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.bdisp_node**, %struct.bdisp_node*** %14, align 8
  %16 = getelementptr inbounds %struct.bdisp_node*, %struct.bdisp_node** %15, i64 0
  %17 = load %struct.bdisp_node*, %struct.bdisp_node** %16, align 8
  %18 = icmp ne %struct.bdisp_node* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %21 = call i32 @seq_puts(%struct.seq_file* %20, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %233

22:                                               ; preds = %2
  br label %23

23:                                               ; preds = %230, %22
  %24 = load %struct.bdisp_dev*, %struct.bdisp_dev** %6, align 8
  %25 = getelementptr inbounds %struct.bdisp_dev, %struct.bdisp_dev* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.bdisp_node**, %struct.bdisp_node*** %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.bdisp_node*, %struct.bdisp_node** %27, i64 %29
  %31 = load %struct.bdisp_node*, %struct.bdisp_node** %30, align 8
  store %struct.bdisp_node* %31, %struct.bdisp_node** %7, align 8
  %32 = load %struct.bdisp_node*, %struct.bdisp_node** %7, align 8
  %33 = icmp ne %struct.bdisp_node* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %23
  br label %232

35:                                               ; preds = %23
  %36 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @seq_printf(%struct.seq_file* %36, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %40 = call i32 @seq_puts(%struct.seq_file* %39, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %41 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %42 = load %struct.bdisp_node*, %struct.bdisp_node** %7, align 8
  %43 = getelementptr inbounds %struct.bdisp_node, %struct.bdisp_node* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @seq_printf(%struct.seq_file* %41, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %44)
  %46 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %47 = load %struct.bdisp_node*, %struct.bdisp_node** %7, align 8
  %48 = getelementptr inbounds %struct.bdisp_node, %struct.bdisp_node* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @seq_printf(%struct.seq_file* %46, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %49)
  %51 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %52 = load %struct.bdisp_node*, %struct.bdisp_node** %7, align 8
  %53 = getelementptr inbounds %struct.bdisp_node, %struct.bdisp_node* %52, i32 0, i32 31
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @bdisp_dbg_dump_ins(%struct.seq_file* %51, i32 %54)
  %56 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %57 = load %struct.bdisp_node*, %struct.bdisp_node** %7, align 8
  %58 = getelementptr inbounds %struct.bdisp_node, %struct.bdisp_node* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @seq_printf(%struct.seq_file* %56, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %59)
  %61 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %62 = call i32 @seq_puts(%struct.seq_file* %61, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %63 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %64 = load %struct.bdisp_node*, %struct.bdisp_node** %7, align 8
  %65 = getelementptr inbounds %struct.bdisp_node, %struct.bdisp_node* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @seq_printf(%struct.seq_file* %63, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 %66)
  %68 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %69 = load %struct.bdisp_node*, %struct.bdisp_node** %7, align 8
  %70 = getelementptr inbounds %struct.bdisp_node, %struct.bdisp_node* %69, i32 0, i32 30
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @bdisp_dbg_dump_tty(%struct.seq_file* %68, i32 %71)
  %73 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %74 = load %struct.bdisp_node*, %struct.bdisp_node** %7, align 8
  %75 = getelementptr inbounds %struct.bdisp_node, %struct.bdisp_node* %74, i32 0, i32 29
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @bdisp_dbg_dump_xy(%struct.seq_file* %73, i32 %76, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %78 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %79 = load %struct.bdisp_node*, %struct.bdisp_node** %7, align 8
  %80 = getelementptr inbounds %struct.bdisp_node, %struct.bdisp_node* %79, i32 0, i32 28
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @bdisp_dbg_dump_sz(%struct.seq_file* %78, i32 %81, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %83 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %84 = call i32 @seq_puts(%struct.seq_file* %83, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  %85 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %86 = load %struct.bdisp_node*, %struct.bdisp_node** %7, align 8
  %87 = getelementptr inbounds %struct.bdisp_node, %struct.bdisp_node* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @seq_printf(%struct.seq_file* %85, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i32 %88)
  %90 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %91 = load %struct.bdisp_node*, %struct.bdisp_node** %7, align 8
  %92 = getelementptr inbounds %struct.bdisp_node, %struct.bdisp_node* %91, i32 0, i32 27
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.bdisp_node*, %struct.bdisp_node** %7, align 8
  %95 = getelementptr inbounds %struct.bdisp_node, %struct.bdisp_node* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @bdisp_dbg_dump_sty(%struct.seq_file* %90, i32 %93, i32 %96, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %98 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %99 = load %struct.bdisp_node*, %struct.bdisp_node** %7, align 8
  %100 = getelementptr inbounds %struct.bdisp_node, %struct.bdisp_node* %99, i32 0, i32 26
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @bdisp_dbg_dump_xy(%struct.seq_file* %98, i32 %101, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  %103 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %104 = call i32 @seq_puts(%struct.seq_file* %103, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0))
  %105 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %106 = load %struct.bdisp_node*, %struct.bdisp_node** %7, align 8
  %107 = getelementptr inbounds %struct.bdisp_node, %struct.bdisp_node* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @seq_printf(%struct.seq_file* %105, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i32 %108)
  %110 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %111 = load %struct.bdisp_node*, %struct.bdisp_node** %7, align 8
  %112 = getelementptr inbounds %struct.bdisp_node, %struct.bdisp_node* %111, i32 0, i32 25
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.bdisp_node*, %struct.bdisp_node** %7, align 8
  %115 = getelementptr inbounds %struct.bdisp_node, %struct.bdisp_node* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @bdisp_dbg_dump_sty(%struct.seq_file* %110, i32 %113, i32 %116, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0))
  %118 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %119 = load %struct.bdisp_node*, %struct.bdisp_node** %7, align 8
  %120 = getelementptr inbounds %struct.bdisp_node, %struct.bdisp_node* %119, i32 0, i32 24
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @bdisp_dbg_dump_xy(%struct.seq_file* %118, i32 %121, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0))
  %123 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %124 = load %struct.bdisp_node*, %struct.bdisp_node** %7, align 8
  %125 = getelementptr inbounds %struct.bdisp_node, %struct.bdisp_node* %124, i32 0, i32 23
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @bdisp_dbg_dump_sz(%struct.seq_file* %123, i32 %126, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0))
  %128 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %129 = call i32 @seq_puts(%struct.seq_file* %128, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0))
  %130 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %131 = load %struct.bdisp_node*, %struct.bdisp_node** %7, align 8
  %132 = getelementptr inbounds %struct.bdisp_node, %struct.bdisp_node* %131, i32 0, i32 6
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @seq_printf(%struct.seq_file* %130, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0), i32 %133)
  %135 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %136 = load %struct.bdisp_node*, %struct.bdisp_node** %7, align 8
  %137 = getelementptr inbounds %struct.bdisp_node, %struct.bdisp_node* %136, i32 0, i32 22
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.bdisp_node*, %struct.bdisp_node** %7, align 8
  %140 = getelementptr inbounds %struct.bdisp_node, %struct.bdisp_node* %139, i32 0, i32 6
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @bdisp_dbg_dump_sty(%struct.seq_file* %135, i32 %138, i32 %141, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0))
  %143 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %144 = load %struct.bdisp_node*, %struct.bdisp_node** %7, align 8
  %145 = getelementptr inbounds %struct.bdisp_node, %struct.bdisp_node* %144, i32 0, i32 21
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @bdisp_dbg_dump_xy(%struct.seq_file* %143, i32 %146, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0))
  %148 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %149 = load %struct.bdisp_node*, %struct.bdisp_node** %7, align 8
  %150 = getelementptr inbounds %struct.bdisp_node, %struct.bdisp_node* %149, i32 0, i32 20
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @bdisp_dbg_dump_sz(%struct.seq_file* %148, i32 %151, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0))
  %153 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %154 = call i32 @seq_puts(%struct.seq_file* %153, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i64 0, i64 0))
  %155 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %156 = load %struct.bdisp_node*, %struct.bdisp_node** %7, align 8
  %157 = getelementptr inbounds %struct.bdisp_node, %struct.bdisp_node* %156, i32 0, i32 19
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @bdisp_dbg_dump_fctl(%struct.seq_file* %155, i32 %158)
  %160 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %161 = call i32 @seq_puts(%struct.seq_file* %160, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.25, i64 0, i64 0))
  %162 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %163 = load %struct.bdisp_node*, %struct.bdisp_node** %7, align 8
  %164 = getelementptr inbounds %struct.bdisp_node, %struct.bdisp_node* %163, i32 0, i32 18
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @bdisp_dbg_dump_rsf(%struct.seq_file* %162, i32 %165, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0))
  %167 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %168 = load %struct.bdisp_node*, %struct.bdisp_node** %7, align 8
  %169 = getelementptr inbounds %struct.bdisp_node, %struct.bdisp_node* %168, i32 0, i32 17
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @bdisp_dbg_dump_rzi(%struct.seq_file* %167, i32 %170, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0))
  %172 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %173 = load %struct.bdisp_node*, %struct.bdisp_node** %7, align 8
  %174 = getelementptr inbounds %struct.bdisp_node, %struct.bdisp_node* %173, i32 0, i32 7
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @seq_printf(%struct.seq_file* %172, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0), i32 %175)
  %177 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %178 = load %struct.bdisp_node*, %struct.bdisp_node** %7, align 8
  %179 = getelementptr inbounds %struct.bdisp_node, %struct.bdisp_node* %178, i32 0, i32 8
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @seq_printf(%struct.seq_file* %177, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0), i32 %180)
  %182 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %183 = call i32 @seq_puts(%struct.seq_file* %182, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.30, i64 0, i64 0))
  %184 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %185 = load %struct.bdisp_node*, %struct.bdisp_node** %7, align 8
  %186 = getelementptr inbounds %struct.bdisp_node, %struct.bdisp_node* %185, i32 0, i32 16
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @bdisp_dbg_dump_rsf(%struct.seq_file* %184, i32 %187, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i64 0, i64 0))
  %189 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %190 = load %struct.bdisp_node*, %struct.bdisp_node** %7, align 8
  %191 = getelementptr inbounds %struct.bdisp_node, %struct.bdisp_node* %190, i32 0, i32 15
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @bdisp_dbg_dump_rzi(%struct.seq_file* %189, i32 %192, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i64 0, i64 0))
  %194 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %195 = load %struct.bdisp_node*, %struct.bdisp_node** %7, align 8
  %196 = getelementptr inbounds %struct.bdisp_node, %struct.bdisp_node* %195, i32 0, i32 9
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @seq_printf(%struct.seq_file* %194, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i64 0, i64 0), i32 %197)
  %199 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %200 = load %struct.bdisp_node*, %struct.bdisp_node** %7, align 8
  %201 = getelementptr inbounds %struct.bdisp_node, %struct.bdisp_node* %200, i32 0, i32 10
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @seq_printf(%struct.seq_file* %199, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i64 0, i64 0), i32 %202)
  %204 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %205 = call i32 @seq_puts(%struct.seq_file* %204, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.35, i64 0, i64 0))
  %206 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %207 = load %struct.bdisp_node*, %struct.bdisp_node** %7, align 8
  %208 = getelementptr inbounds %struct.bdisp_node, %struct.bdisp_node* %207, i32 0, i32 14
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.bdisp_node*, %struct.bdisp_node** %7, align 8
  %211 = getelementptr inbounds %struct.bdisp_node, %struct.bdisp_node* %210, i32 0, i32 13
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.bdisp_node*, %struct.bdisp_node** %7, align 8
  %214 = getelementptr inbounds %struct.bdisp_node, %struct.bdisp_node* %213, i32 0, i32 12
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.bdisp_node*, %struct.bdisp_node** %7, align 8
  %217 = getelementptr inbounds %struct.bdisp_node, %struct.bdisp_node* %216, i32 0, i32 11
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @bdisp_dbg_dump_ivmx(%struct.seq_file* %206, i32 %209, i32 %212, i32 %215, i32 %218)
  br label %220

220:                                              ; preds = %35
  %221 = load i32, i32* %8, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %8, align 4
  %223 = load i32, i32* @MAX_NB_NODE, align 4
  %224 = icmp slt i32 %222, %223
  br i1 %224, label %225, label %230

225:                                              ; preds = %220
  %226 = load %struct.bdisp_node*, %struct.bdisp_node** %7, align 8
  %227 = getelementptr inbounds %struct.bdisp_node, %struct.bdisp_node* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = icmp ne i32 %228, 0
  br label %230

230:                                              ; preds = %225, %220
  %231 = phi i1 [ false, %220 ], [ %229, %225 ]
  br i1 %231, label %23, label %232

232:                                              ; preds = %230, %34
  store i32 0, i32* %3, align 4
  br label %233

233:                                              ; preds = %232, %19
  %234 = load i32, i32* %3, align 4
  ret i32 %234
}

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

declare dso_local i32 @bdisp_dbg_dump_ins(%struct.seq_file*, i32) #1

declare dso_local i32 @bdisp_dbg_dump_tty(%struct.seq_file*, i32) #1

declare dso_local i32 @bdisp_dbg_dump_xy(%struct.seq_file*, i32, i8*) #1

declare dso_local i32 @bdisp_dbg_dump_sz(%struct.seq_file*, i32, i8*) #1

declare dso_local i32 @bdisp_dbg_dump_sty(%struct.seq_file*, i32, i32, i8*) #1

declare dso_local i32 @bdisp_dbg_dump_fctl(%struct.seq_file*, i32) #1

declare dso_local i32 @bdisp_dbg_dump_rsf(%struct.seq_file*, i32, i8*) #1

declare dso_local i32 @bdisp_dbg_dump_rzi(%struct.seq_file*, i32, i8*) #1

declare dso_local i32 @bdisp_dbg_dump_ivmx(%struct.seq_file*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
